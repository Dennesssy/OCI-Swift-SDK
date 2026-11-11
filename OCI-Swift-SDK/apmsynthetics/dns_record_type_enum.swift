import Foundation

// MARK: - DnsRecordTypeEnum

public enum DnsRecordTypeEnum: String, Codable, Sendable {
    case a = "A"
    case aaaa = "AAAA"
    case `any` = "ANY"
    case cname = "CNAME"
    case dnskey = "DNSKEY"
    case ds = "DS"
    case mx = "MX"
    case ns = "NS"
    case nsec = "NSEC"
    case nullRec = "NULL_REC"
    case ptr = "PTR"
    case rrsig = "RRSIG"
    case soa = "SOA"
    case txt = "TXT"
}

public extension DnsRecordTypeEnum {
    static var allValues: [DnsRecordTypeEnum] { [.a, .aaaa, .`any`, .cname, .dnskey, .ds, .mx, .ns, .nsec, .nullRec, .ptr, .rrsig, .soa, .txt] }
    static var allStringValues: [String] { ["A", "AAAA", "ANY", "CNAME", "DNSKEY", "DS", "MX", "NS", "NSEC", "NULL_REC", "PTR", "RRSIG", "SOA", "TXT"] }
    static func fromString(_ value: String) -> DnsRecordTypeEnum? { DnsRecordTypeEnum(rawValue: value) }
}