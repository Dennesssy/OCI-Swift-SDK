#!/usr/bin/env python3
"""OCI Swift SDK operation generator.

Reads the oci-go-sdk sources of a service (<svc>/*_client.go and
<svc>/*_request_response.go) and emits Swift:
  * one <client file stem>.swift per Go *_client.go (a client class + one async
    method per operation, each building an OCIRequest and calling BaseClient)
  * oci_gen_support.swift (internal helpers used by the generated methods)
  * <op>_request_response.swift ONLY for operations whose Request/Response
    structs do not already exist in the existing Swift service dir
    (disable with --no-emit-missing-types)
  * gen_report.json (counts, unhandled ops, mismatches)

Run:  python3 -I gen.py --go-sdk <oci-go-sdk> --swift-root <OCI-Swift-SDK> \
          --out <outdir> objectstorage identity audit
Python 3 standard library only.
"""
import argparse
import json
import os
import re
import sys

SWIFT_KEYWORDS = {
    "associatedtype", "class", "deinit", "enum", "extension", "fileprivate", "func", "import",
    "init", "inout", "internal", "let", "open", "operator", "private", "precedencegroup",
    "protocol", "public", "rethrows", "static", "struct", "subscript", "typealias", "var",
    "break", "case", "catch", "continue", "default", "defer", "do", "else", "fallthrough",
    "for", "guard", "if", "in", "repeat", "return", "throw", "switch", "where", "while",
    "Any", "as", "await", "false", "is", "nil", "self", "super", "throws", "true", "try",
}


def esc(name):
    return "`%s`" % name if name in SWIFT_KEYWORDS else name


def lower_camel(name):
    """Go exported field name -> Swift property name (leading acronym aware)."""
    if not name:
        return name
    m = re.match(r"^([A-Z]+)([A-Z][a-z].*)$", name)  # e.g. DNSZone -> dnsZone
    if m:
        return m.group(1).lower() + m.group(2)
    if name.isupper():
        return name.lower()
    return name[0].lower() + name[1:]


# --------------------------------------------------------------------------- Go parsing

TAG_RE = re.compile(r'(\w+):"([^"]*)"')
FIELD_RE = re.compile(r'^\t(?:(\w+)\s+)?([^\s`]+)\s+`([^`]*)`\s*$')  # name optional: embedded body field
STRUCT_RE = re.compile(r'^type (\w+) struct \{\n(.*?)^\}', re.S | re.M)


class GoField:
    def __init__(self, name, gotype, tags):
        self.name, self.gotype, self.tags = name, gotype, tags
        self.swift = lower_camel(name)

    @property
    def contributes(self):
        return self.tags.get("contributesTo")

    @property
    def present(self):
        return self.tags.get("presentIn")

    @property
    def wire(self):
        return self.tags.get("name")

    @property
    def mandatory(self):
        return self.tags.get("mandatory") == "true"


def parse_go_structs(path):
    text = open(path, encoding="utf-8").read()
    out = {}
    for m in STRUCT_RE.finditer(text):
        fields = []
        for line in m.group(2).split("\n"):
            fm = FIELD_RE.match(line)
            if fm:
                tags = dict(TAG_RE.findall(fm.group(3)))
                gtype = fm.group(2)
                fname = fm.group(1) or gtype.lstrip("*").split(".")[-1]
                fields.append(GoField(fname, gtype, tags))
        out[m.group(1)] = fields
    return out


def go_to_swift(gotype):
    """Return (swift base type, kind). kind in string,int,int64,int32,double,float,bool,
    date,data,enum,array,dict,json,model."""
    t = gotype.lstrip("*")
    simple = {
        "string": ("String", "string"), "int": ("Int", "int"), "int64": ("Int64", "int64"),
        "int32": ("Int32", "int32"), "float32": ("Float", "float"), "float64": ("Double", "double"),
        "bool": ("Bool", "bool"), "common.SDKTime": ("Date", "date"), "common.SDKDate": ("Date", "date"),
        "[]byte": ("Foundation.Data", "data"), "io.ReadCloser": ("Foundation.Data", "data"),
        "interface{}": ("JSONValue", "json"),
    }
    if t in simple:
        return simple[t]
    if t.startswith("[]"):
        inner, _ = go_to_swift(t[2:])
        return "[%s]" % inner, "array"
    if t.startswith("map["):
        close = t.index("]")
        inner, _ = go_to_swift(t[close + 1:])
        return "[String: %s]" % inner, "dict"
    t = t.replace("common.", "")
    if t.endswith("Enum"):
        return t, "enum"
    return t, "model"


class Param:
    """A request/response field resolved against the Swift side."""
    def __init__(self, go, swift_base, kind, optional, swift_name):
        self.go, self.base, self.kind, self.optional, self.name = go, swift_base, kind, optional, swift_name


# --------------------------------------------------------------------------- Swift scan

DECL_RE = re.compile(r'^\s*(?:public\s+|internal\s+|private\s+|fileprivate\s+|open\s+)?(?:final\s+)??'
                     r'(?:indirect\s+)?(struct|class|enum|typealias|protocol|actor)\s+(\w+)', re.M)


BUILTIN = {'String', 'Int', 'Int64', 'Int32', 'Double', 'Float', 'Bool', 'Date', 'Data', 'Foundation.Data', 'JSONValue'}
STUBS = set()


def scan_swift_dir(d):
    """Return (declared type names, {structName: (props ordered {name:(type,opt)}, init labels)})."""
    declared, structs = set(), {}
    if not os.path.isdir(d):
        return declared, structs
    for fn in sorted(os.listdir(d)):
        if not fn.endswith(".swift"):
            continue
        text = open(os.path.join(d, fn), encoding="utf-8", errors="replace").read()
        for m in DECL_RE.finditer(text):
            declared.add(m.group(2))
        for m in re.finditer(r'public struct (\w+(?:Request|Response))\b[^{]*\{', text):
            name = m.group(1)
            start = m.end()
            depth, i = 1, start
            while i < len(text) and depth:
                if text[i] == "{":
                    depth += 1
                elif text[i] == "}":
                    depth -= 1
                i += 1
            body = text[start:i]
            props = {}
            for pm in re.finditer(r'^\s*public var (\w+)\s*:\s*([^\n=]+?)\s*$', body, re.M):
                ty = pm.group(2).strip()
                opt = ty.endswith("?")
                props[pm.group(1)] = (ty[:-1] if opt else ty, opt)
            labels = []
            im = re.search(r'public init\(([^)]*)\)', body, re.S)
            if im:
                for lm in re.finditer(r'(\w+)\s*:', im.group(1)):
                    labels.append(lm.group(1))
            if props:  # a struct with no properties is a placeholder stub: treated as missing
                structs[name] = (props, labels)
            else:
                STUBS.add(name)
    return declared, structs


# --------------------------------------------------------------------------- client parsing

PUB_RE = re.compile(r'^func \(client (\w+)\) ([A-Z]\w*)\(ctx context\.Context, request (\w+)\) '
                    r'\(response (\w+), err error\) \{\n(.*?)^\}', re.S | re.M)
PUB0_RE = re.compile(r'^func \(client (\w+)\) ([A-Z]\w*)\(ctx context\.Context\) '
                     r'\(response (\w+), err error\) \{\n(.*?)^\}', re.S | re.M)
PRIV_RE = re.compile(r'^func \(client \w+\) ([a-z]\w*)\(ctx context\.Context(?:, request common\.OCIRequest, binaryReqBody|\) \(common\.OCIResponse)[^\n]*\{\n(.*?)^\}', re.S | re.M)


def doc_comment(text, pos):
    lines = text[:pos].rstrip("\n").split("\n")
    out = []
    while lines and lines[-1].startswith("//"):
        out.append(lines.pop()[2:].strip())
    out.reverse()
    res = []
    for l in out:
        if l.startswith("# See also") or l.startswith("Click https") or l.startswith("A default retry"):
            break
        if l:
            res.append(l)
    return [l.replace("\\", "\\\\") for l in res if l != "//"][:6]


def parse_client_file(path):
    text = open(path, encoding="utf-8").read()
    info = {"file": os.path.basename(path), "ops": [], "unhandled": []}
    m = re.search(r'^type (\w+Client) struct', text, re.M)
    info["client"] = m.group(1) if m else None
    m = re.search(r'client\.BasePath = "([^"]*)"', text)
    info["basePath"] = m.group(1) if m else ""
    m = re.search(r'EndpointForTemplate\("([^"]*)", "([^"]*)"\)', text)
    info["endpointTemplate"] = m.group(2) if m else None
    privs = {m.group(1): m.group(2) for m in PRIV_RE.finditer(text)}
    pubs = [(m, m.groups()) for m in PUB_RE.finditer(text)]
    for m in PUB0_RE.finditer(text):
        recv, opname, resptype, body = m.groups()
        pubs.append((m, (recv, opname, None, resptype, body)))
    pubs.sort(key=lambda x: x[0].start())
    for m, groups in pubs:
        recv, opname, reqtype, resptype, body = groups
        rm = re.search(r'common\.Retry\(ctx, request, client\.(\w+),', body)
        if reqtype is None:
            rm = re.search(r'client\.(\w+)\(ctx\)', body)
        entry = {"name": opname, "request": reqtype, "response": resptype,
                 "retryToken": "request.OpcRetryToken = common.String(common.RetryToken())" in body,
                 "doc": doc_comment(text, m.start()), "client": recv, "flags": []}
        if not rm or rm.group(1) not in privs:
            info["unhandled"].append((opname, "could not locate private implementation (common.Retry target)"))
            continue
        pb = privs[rm.group(1)]
        hm = re.search(r'(?:request\.HTTPRequest|common\.MakeDefaultHTTPRequest)\(http\.Method(\w+), "([^"]*)"', pb)
        if not hm:
            info["unhandled"].append((opname, "no request.HTTPRequest(http.MethodX, \"/path\") call in implementation"))
            continue
        entry["method"], entry["path"] = hm.group(1).upper(), hm.group(2)
        if "ReplaceMandatoryParamInPath" in pb:
            entry["flags"].append("endpoint-template-params (ReplaceMandatoryParamInPath) not applied")
        if "NewSignerFromOCIRequestSigner" in pb:
            entry["flags"].append("custom signer / body-signing exclusion not applied")
        for k, v in re.findall(r'extraHeaders\["([^"]+)"\] = "([^"]*)"', pb):
            entry["flags"].append("conditional extra header %s: %s not applied" % (k, v))
        info["ops"].append(entry)
    return info


# --------------------------------------------------------------------------- Swift emission

SUPPORT = r'''import Foundation

// Internal helpers for generated OCI operations. Generated by tools/gen/gen.py; DO NOT EDIT.

struct OCIGenValidationError: Error, CustomStringConvertible {
    let message: String
    var description: String { message }
}

enum OCIGen {
    static let encoder: JSONEncoder = {
        let e = JSONEncoder()
        e.dateEncodingStrategy = .custom { date, enc in
            var c = enc.singleValueContainer()
            try c.encode(OCIGen.formatDate(date))
        }
        return e
    }()

    static let decoder: JSONDecoder = {
        let d = JSONDecoder()
        d.dateDecodingStrategy = .custom { dec in
            let c = try dec.singleValueContainer()
            let s = try c.decode(String.self)
            guard let date = OCIGen.parseDate(s) else {
                throw DecodingError.dataCorruptedError(in: c, debugDescription: "Unrecognized date: \(s)")
            }
            return date
        }
        return d
    }()

    static func formatDate(_ d: Date) -> String {
        let f = ISO8601DateFormatter()
        f.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        return f.string(from: d)
    }

    static func parseDate(_ s: String) -> Date? {
        let f1 = ISO8601DateFormatter()
        f1.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        if let d = f1.date(from: s) { return d }
        let f2 = ISO8601DateFormatter()
        f2.formatOptions = [.withInternetDateTime]
        if let d = f2.date(from: s) { return d }
        let f3 = ISO8601DateFormatter()
        f3.formatOptions = [.withFullDate]
        if let d = f3.date(from: s) { return d }
        let rfc = DateFormatter()
        rfc.locale = Locale(identifier: "en_US_POSIX")
        rfc.timeZone = TimeZone(identifier: "GMT")
        for fmt in ["EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy"] {
            rfc.dateFormat = fmt
            if let d = rfc.date(from: s) { return d }
        }
        return nil
    }

    /// Unwraps Optional and renders a scalar, enum, Date or array value as its wire string.
    static func string(_ value: Any?) -> String? {
        guard var v = value else { return nil }
        while Mirror(reflecting: v).displayStyle == .optional {
            guard let inner = Mirror(reflecting: v).children.first?.value else { return nil }
            v = inner
        }
        switch v {
        case let s as String: return s
        case let b as Bool: return b ? "true" : "false"
        case let d as Date: return formatDate(d)
        case let i as Int: return String(i)
        case let i as Int64: return String(i)
        case let i as Int32: return String(i)
        case let x as Double: return String(x)
        case let x as Float: return String(x)
        case let r as any RawRepresentable: return string(r.rawValue)
        case let a as [Any]: return a.compactMap { string($0) }.joined(separator: ",")
        default: return String(describing: v)
        }
    }

    static func setQuery(_ q: inout [String: String], _ name: String, _ value: Any?) {
        if let s = string(value) { q[name] = s }
    }

    static func setHeader(_ h: inout [String: String], _ name: String, _ value: Any?) {
        if let s = string(value) { h[name] = s }
    }

    static func setHeaderCollection(_ h: inout [String: String], prefix: String, _ value: [String: String]?) {
        guard let value = value else { return }
        for (k, v) in value { h[prefix + k] = v }
    }

    static func pathParam(_ value: Any?, _ name: String) throws -> String {
        guard let s = string(value), !s.isEmpty else {
            throw OCIGenValidationError(message: "missing required path parameter '\(name)'")
        }
        return s.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? s
    }

    static func jsonBody<T: Encodable>(_ value: T?) throws -> Foundation.Data? {
        guard let value = value else { return nil }
        return try encoder.encode(value)
    }

    static func binaryBody(_ value: Any?) -> Foundation.Data? {
        if let d = value as? Foundation.Data { return d }
        if let s = value as? String { return Foundation.Data(s.utf8) }
        return nil
    }

    static func decodeBody<T: Decodable>(_ type: T.Type, _ data: Foundation.Data) throws -> T? {
        if data.isEmpty { return nil }
        return try decoder.decode(T.self, from: data)
    }

    static func header(_ http: HTTPURLResponse, _ name: String) -> String? {
        http.value(forHTTPHeaderField: name)
    }

    static func headerCollection(_ http: HTTPURLResponse, prefix: String) -> [String: String]? {
        var out: [String: String] = [:]
        let p = prefix.lowercased()
        for (k, v) in http.allHeaderFields {
            guard let ks = k as? String, ks.lowercased().hasPrefix(p), let vs = v as? String else { continue }
            out[String(ks.dropFirst(p.count))] = vs
        }
        return out.isEmpty ? nil : out
    }
}
'''


def swift_string(s):
    return '"%s"' % s.replace("\\", "\\\\").replace('"', '\\"')


def header_expr(kind, base, wire):
    raw = 'OCIGen.header(http, %s)' % swift_string(wire)
    if kind == "string":
        return raw
    conv = {"int": "Int($0)", "int64": "Int64($0)", "int32": "Int32($0)", "double": "Double($0)",
            "float": "Float($0)", "bool": "Bool($0)", "date": "OCIGen.parseDate($0)"}.get(kind)
    if conv:
        return "%s.flatMap { %s }" % (raw, conv)
    if kind == "enum":
        return "%s.flatMap { %s(rawValue: $0) }" % (raw, base)
    return None


def build_params(fields, swift_struct, tag_key, mism, ctx, emitting_types):
    """Resolve Go fields to Params against an existing Swift struct (or Go-derived)."""
    params = []
    for f in fields:
        base, kind = go_to_swift(f.gotype)
        if swift_struct is None:
            params.append(Param(f, base, kind, not (f.mandatory and tag_key == "contributes"), f.swift))
            continue
        props = swift_struct[0]
        name = f.swift
        if name not in props:
            cands = [p for p in props if p.lower() == name.lower()]
            if cands:
                name = cands[0]
            else:
                mism.append({"where": ctx, "issue": "Swift property for Go field %s not found" % f.name})
                continue
        sbase, opt = props[name]
        # kind from the Swift type when it differs from the Go-derived one
        if sbase != base:
            skind = {"String": "string", "Int": "int", "Int64": "int64", "Int32": "int32", "Double": "double",
                     "Float": "float", "Bool": "bool", "Date": "date", "Data": "data", "Foundation.Data": "data"}.get(sbase)
            if skind is None:
                skind = "enum" if sbase.endswith("Enum") else ("array" if sbase.startswith("[") else "model")
            mism.append({"where": ctx, "issue": "type mismatch for %s: Go %s -> %s, existing Swift %s"
                         % (f.name, f.gotype, base, sbase), "level": "info"})
            base, kind = sbase, skind
        params.append(Param(f, base, kind, opt, name))
    return params


def emit_types_file(opname, reqtype, resptype, req_params, resp_params):
    """Emit the Request and/or Response struct (pass None to skip one)."""
    L = ["import Foundation", "", "// Generated by tools/gen/gen.py from the Go SDK request/response structs; DO NOT EDIT.", ""]
    if reqtype:
        L += ["// MARK: - %s" % reqtype, "", "public struct %s: Sendable {" % reqtype]
        for p in req_params:
            L.append("    public var %s: %s%s" % (esc(p.name), p.base, "?" if p.optional else ""))
        L.append("")
        args = ", ".join("%s: %s%s%s" % (esc(p.name), p.base, "?" if p.optional else "", " = nil" if p.optional else "")
                         for p in req_params)
        L.append("    public init(%s) {" % args)
        for p in req_params:
            L.append("        self.%s = %s" % (esc(p.name), esc(p.name)))
        L += ["    }", "}", ""]
    if resptype:
        L += ["// MARK: - %s" % resptype, "", "public struct %s: Sendable {" % resptype]
        for p in resp_params:
            L.append("    public var %s: %s?" % (esc(p.name), p.base))
        L.append("")
        args = ", ".join("%s: %s? = nil" % (esc(p.name), p.base) for p in resp_params)
        L.append("    public init(%s) {" % args)
        for p in resp_params:
            L.append("        self.%s = %s" % (esc(p.name), esc(p.name)))
        L += ["    }", "}"]
    return "\n".join(L) + "\n"


def generate_service(go_sdk, swift_root, out_root, service, emit_missing=True):
    gdir = os.path.join(go_sdk, service)
    sdir = os.path.join(swift_root, service)
    odir = os.path.join(out_root, service)
    os.makedirs(odir, exist_ok=True)
    structs = {}
    for fn in sorted(os.listdir(gdir)):
        if fn.endswith("_request_response.go"):
            for k, v in parse_go_structs(os.path.join(gdir, fn)).items():
                structs[k] = (v, fn)
    declared, sw_structs = scan_swift_dir(sdir)
    report = {"service": service, "go_operations": 0, "emitted": 0, "unhandled": [], "mismatches": [],
              "missing_types": [], "caveats": [], "types_emitted": [], "files": []}
    go_http_calls = 0
    clients = []
    for fn in sorted(os.listdir(gdir)):
        if fn.endswith("_client.go"):
            go_http_calls += len(re.findall(r'request\.HTTPRequest\(', open(os.path.join(gdir, fn), encoding="utf-8").read()))
            clients.append(parse_client_file(os.path.join(gdir, fn)))
    total_ops = 0
    referenced = set()
    for ci in clients:
        total_ops += len(ci["ops"]) + len(ci["unhandled"])
        for name, why in ci["unhandled"]:
            report["unhandled"].append({"op": name, "reason": why})
    report["go_operations"] = total_ops
    report["go_http_request_calls"] = go_http_calls

    with open(os.path.join(odir, "oci_gen_support.swift"), "w") as fh:
        fh.write(SUPPORT)
    report["files"].append("oci_gen_support.swift")

    for ci in clients:
        if not ci["client"]:
            continue
        cname = ci["client"]
        L = ["import Foundation", "import OCICommon", "",
             "// Generated by tools/gen/gen.py from oci-go-sdk %s/%s; DO NOT EDIT." % (service, ci["file"]), "",
             "// MARK: - %s" % cname, ""]
        tmpl = ci["endpointTemplate"] or ""
        L.append("public final class %s: Sendable {" % cname)
        L.append("    public static let basePath = %s" % swift_string(ci["basePath"]))
        L.append("    public static let endpointTemplate = %s" % swift_string(tmpl))
        L.append("    public let base: BaseClient")
        L.append("")
        L.append("    public init(host: String, signer: Signer, http: HTTPClient) {")
        L.append("        self.base = BaseClient(host: host, signer: signer, http: http)")
        L.append("    }")
        L.append("")
        L.append("    /// Builds the host from the service endpoint template for a region (realm domain defaults to oraclecloud.com).")
        L.append("    public convenience init(region: String, secondLevelDomain: String = \"oraclecloud.com\", signer: Signer, http: HTTPClient) {")
        L.append("        let host = Self.endpointTemplate")
        L.append("            .replacingOccurrences(of: \"{region}\", with: region)")
        L.append("            .replacingOccurrences(of: \"{secondLevelDomain}\", with: secondLevelDomain)")
        L.append("        self.init(host: host, signer: signer, http: http)")
        L.append("    }")
        for op in ci["ops"]:
            res = gen_op(op, ci, structs, sw_structs, declared, report, odir, referenced, emit_missing)
            if res is None:
                continue
            L.append("")
            L.extend(res)
        L.append("}")
        fname = ci["file"].replace(".go", ".swift")
        with open(os.path.join(odir, fname), "w") as fh:
            fh.write("\n".join(L) + "\n")
        report["files"].append(fname)
    for t in sorted(referenced):
        if t not in declared and t != "JSONValue" and t not in report["types_emitted"]:
            report["missing_types"].append(t)
    emitted_names = set()
    return report


def gen_op(op, ci, structs, sw_structs, declared, report, odir, referenced, emit_missing):
    name = op["name"]
    reqtype, resptype = op["request"], op["response"]
    if reqtype is None:
        rfields, rfile = [], structs.get(resptype, ([], ""))[1]
        reqtype_ok = True
    else:
        reqtype_ok = reqtype in structs
    if not reqtype_ok or resptype not in structs:
        report["unhandled"].append({"op": name, "reason": "Go request/response struct not found (%s / %s)" % (reqtype, resptype)})
        return None
    if reqtype is not None:
        rfields, rfile = structs[reqtype]
    sfields, _ = structs[resptype]
    have_req = True if reqtype is None else reqtype in sw_structs
    have_resp = resptype in sw_structs
    mism = report["mismatches"]
    req_params = build_params(rfields, sw_structs.get(reqtype), "contributes", mism, reqtype, True) if reqtype else []
    resp_go = [f for f in sfields if f.present or f.name != "RawResponse"]
    resp_go = [f for f in resp_go if f.present]
    resp_params = build_params(resp_go, sw_structs.get(resptype), "present", mism, resptype, True)
    if not have_req or not have_resp:
        report["mismatches"].append({"where": name, "level": "missing-swift-type",
                                     "issue": "Swift %s missing in existing service dir: %s" % (
                                         "/".join(t for t, h in ((reqtype, have_req), (resptype, have_resp)) if not h),
                                         "generated" if emit_missing else "NOT generated (op will not compile)")})
    path_tmpl = op["path"]
    paths = [p for p in req_params if p.go.contributes == "path"]
    for p in paths:
        if "{%s}" % p.go.wire not in path_tmpl:
            report["unhandled"].append({"op": name, "reason": "path param %s not present in template %s (positional append unsupported)" % (p.go.wire, path_tmpl)})
            return None
    for fl in op["flags"]:
        report["caveats"].append({"op": name, "caveat": fl})
    for p in req_params + resp_params:
        t = p.base
        while True:
            m2 = re.match(r'^\[(?:String: )?(.*)\]$', t)
            if not m2:
                break
            t = m2.group(1)
        if t not in BUILTIN:
            referenced.add(t)
    # Emit missing types
    if emit_missing and (not have_req or not have_resp):
        if not have_req and not have_resp:
            fn = rfile.replace(".go", ".swift")
            with open(os.path.join(odir, fn), "w") as fh:
                fh.write(emit_types_file(name, reqtype, resptype, req_params, resp_params))
            report["types_emitted"].extend([reqtype, resptype])
            report["files"].append(fn)
        else:
            which = resptype if have_req else reqtype
            fn = rfile.replace("_request_response.go", "_%s_generated.swift" % ("response" if have_req else "request"))
            with open(os.path.join(odir, fn), "w") as fh:
                fh.write(emit_types_file(name, None if have_req else reqtype, resptype if have_req else None, req_params, resp_params))
            report["types_emitted"].append(which)
            report["files"].append(fn)

    m = lower_camel(name)
    L = []
    for d in op["doc"]:
        L.append("    /// " + d)
    if reqtype:
        L.append("    public func %s(_ request: %s) async throws -> %s {" % (esc(m), reqtype, resptype))
    else:
        L.append("    public func %s() async throws -> %s {" % (esc(m), resptype))
    full = "/" + ci["basePath"] + path_tmpl if ci["basePath"] else path_tmpl
    L.append("        %s path = %s" % ("var" if any(p.go.contributes == "path" for p in req_params) else "let", swift_string(full)))
    for p in paths:
        L.append("        path = path.replacingOccurrences(of: %s, with: try OCIGen.pathParam(request.%s, %s))"
                 % (swift_string("{%s}" % p.go.wire), esc(p.name), swift_string(p.go.wire)))
    queries = [p for p in req_params if p.go.contributes == "query"]
    headers = [p for p in req_params if p.go.contributes == "header"]
    hcols = [p for p in req_params if p.go.contributes == "header-collection"]
    bodies = [p for p in req_params if p.go.contributes == "body"]
    L.append("        var query: [String: String] = [:]" if queries else "        let query: [String: String] = [:]")
    for p in queries:
        L.append("        OCIGen.setQuery(&query, %s, request.%s)" % (swift_string(p.go.wire), esc(p.name)))
        if p.go.tags.get("collectionFormat") == "multi":
            report["caveats"].append({"op": name, "caveat": "query %s uses collectionFormat=multi; encoded comma-joined because OCIRequest.query is [String:String]" % p.go.wire})
    L.append("        var headers: [String: String] = [:]")
    for p in headers:
        L.append("        OCIGen.setHeader(&headers, %s, request.%s)" % (swift_string(p.go.wire), esc(p.name)))
    for p in hcols:
        L.append("        OCIGen.setHeaderCollection(&headers, prefix: %s, request.%s)" % (swift_string(p.go.tags.get("prefix", "")), esc(p.name)))
    if op["retryToken"]:
        tokf = [f for f in rfields if f.name == "OpcRetryToken"]
        if tokf:
            w = swift_string(tokf[0].wire)
            L.append("        if headers[%s] == nil { headers[%s] = UUID().uuidString }" % (w, w))
    if len(bodies) > 1:
        report["unhandled"].append({"op": name, "reason": "multiple body params"})
        return None
    if bodies:
        b = bodies[0]
        if b.kind == "data" or b.go.tags.get("encoding") == "binary":
            L.append("        let body: Foundation.Data? = OCIGen.binaryBody(request.%s)" % esc(b.name))
        else:
            L.append("        let body: Foundation.Data? = try OCIGen.jsonBody(request.%s)" % esc(b.name))
            L.append("        if body != nil, headers[\"content-type\"] == nil { headers[\"content-type\"] = \"application/json\" }")
    else:
        L.append("        let body: Foundation.Data? = nil")
    L.append("        let ociRequest = OCIRequest(method: %s, path: path, query: query, headers: headers, body: body)" % swift_string(op["method"]))
    # response
    lbl = None
    if resptype in sw_structs and sw_structs[resptype][1]:
        lbl = sw_structs[resptype][1]
    by_name = {p.name: p for p in resp_params}
    order = [n for n in lbl if n in by_name] if lbl else [p.name for p in resp_params]
    for n in (lbl or []):
        if n not in by_name:
            pass  # Swift-only fields keep their default value
    args = []
    used_data = used_http = False
    for n in order:
        p = by_name[n]
        pres = p.go.present
        if pres == "body":
            if p.kind == "data" or p.go.tags.get("encoding") == "binary":
                expr = "data.isEmpty ? nil : data"
            elif p.kind == "string" and p.go.tags.get("encoding") == "plain-text":
                expr = "String(data: data, encoding: .utf8)"
            else:
                expr = "try OCIGen.decodeBody(%s.self, data)" % p.base
            used_data = True
        elif pres == "header":
            expr = header_expr(p.kind, p.base, p.go.wire)
            if expr is None:
                report["caveats"].append({"op": name, "caveat": "response header %s has unsupported type %s; left nil" % (p.go.wire, p.base)})
                continue
            used_http = True
        elif pres == "header-collection":
            expr = "OCIGen.headerCollection(http, prefix: %s)" % swift_string(p.go.tags.get("prefix", ""))
            used_http = True
        else:
            continue
    if used_data and used_http:
        L.append("        let (data, http) = try await base.callRaw(ociRequest)")
    elif used_data:
        L.append("        let (data, _) = try await base.callRaw(ociRequest)")
    elif used_http:
        L.append("        let (_, http) = try await base.callRaw(ociRequest)")
    else:
        L.append("        _ = try await base.callRaw(ociRequest)")
    if args:
        L.append("        return %s(" % resptype)
        L.append(",\n".join("            " + a for a in args))
        L.append("        )")
    else:
        L.append("        return %s()" % resptype)
    L.append("    }")
    report["emitted"] += 1
    return L


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--go-sdk", required=True)
    ap.add_argument("--swift-root", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--no-emit-missing-types", action="store_true")
    ap.add_argument("services", nargs="+")
    a = ap.parse_args()
    allr = []
    for s in a.services:
        r = generate_service(a.go_sdk, a.swift_root, a.out, s, not a.no_emit_missing_types)
        with open(os.path.join(a.out, s, "gen_report.json"), "w") as fh:
            json.dump(r, fh, indent=1)
        print("%s: go_ops=%d (HTTPRequest calls=%d) emitted=%d unhandled=%d mismatches=%d caveats=%d types_emitted=%d missing_model_types=%d"
              % (s, r["go_operations"], r["go_http_request_calls"], r["emitted"], len(r["unhandled"]),
                 len(r["mismatches"]), len(r["caveats"]), len(r["types_emitted"]), len(r["missing_types"])))
        allr.append(r)
    return 0


if __name__ == "__main__":
    sys.exit(main())
