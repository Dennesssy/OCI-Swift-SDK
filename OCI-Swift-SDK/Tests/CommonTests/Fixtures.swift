import XCTest
import Foundation
@testable import OCICommon

/// Fixtures. Key and request values come from Oracle's "Request Signatures" documentation
/// (https://docs.oracle.com/en-us/iaas/Content/API/Concepts/signingrequests.htm, "Test Values"):
/// the published 1024-bit RSA test key and the GET /20160918/instances example with
/// Date "Thu, 05 Jan 2014 21:31:40 GMT". Oracle's page prints no concrete signature, so the expected
/// signatures below were computed independently with `openssl dgst -sha256 -sign` over the
/// signing string (RSA PKCS#1 v1.5 is deterministic). The PKCS#8 and encrypted-PKCS#8 keys are
/// `openssl pkcs8 -topk8` conversions of the same Oracle key (pass phrase "testpass123").
enum Fixtures {
    static let pkcs1PEM = """
-----BEGIN RSA PRIVATE KEY-----
MIICXgIBAAKBgQDCFENGw33yGihy92pDjZQhl0C36rPJj+CvfSC8+q28hxA161QF
NUd13wuCTUcq0Qd2qsBe/2hFyc2DCJJg0h1L78+6Z4UMR7EOcpfdUE9Hf3m/hs+F
UR45uBJeDK1HSFHD8bHKD6kv8FPGfJTotc+2xjJwoYi+1hqp1fIekaxsyQIDAQAB
AoGBAJR8ZkCUvx5kzv+utdl7T5MnordT1TvoXXJGXK7ZZ+UuvMNUCdN2QPc4sBiA
QWvLw1cSKt5DsKZ8UETpYPy8pPYnnDEz2dDYiaew9+xEpubyeW2oH4Zx71wqBtOK
kqwrXa/pzdpiucRRjk6vE6YY7EBBs/g7uanVpGibOVAEsqH1AkEA7DkjVH28WDUg
f1nqvfn2Kj6CT7nIcE3jGJsZZ7zlZmBmHFDONMLUrXR/Zm3pR5m0tCmBqa5RK95u
412jt1dPIwJBANJT3v8pnkth48bQo/fKel6uEYyboRtA5/uHuHkZ6FQF7OUkGogc
mSJluOdc5t6hI1VsLn0QZEjQZMEOWr+wKSMCQQCC4kXJEsHAve77oP6HtG/IiEn7
kpyUXRNvFsDE0czpJJBvL/aRFUJxuRK91jhjC68sA7NsKMGg5OXb5I5Jj36xAkEA
gIT7aFOYBFwGgQAQkWNKLvySgKbAZRTeLBacpHMuQdl1DfdntvAyqpAZ0lY0RKmW
G6aFKaqQfOXKCyWoUiVknQJAXrlgySFci/2ueKlIE1QqIiLSZ8V8OlpFLRnb1pzI
7U1yQXnTAEFYM560yJlzUpOb1V4cScGd365tiSMvxLOvTA==
-----END RSA PRIVATE KEY-----

"""
    static let pkcs8PEM = """
-----BEGIN PRIVATE KEY-----
MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAMIUQ0bDffIaKHL3
akONlCGXQLfqs8mP4K99ILz6rbyHEDXrVAU1R3XfC4JNRyrRB3aqwF7/aEXJzYMI
kmDSHUvvz7pnhQxHsQ5yl91QT0d/eb+Gz4VRHjm4El4MrUdIUcPxscoPqS/wU8Z8
lOi1z7bGMnChiL7WGqnV8h6RrGzJAgMBAAECgYEAlHxmQJS/HmTO/6612XtPkyei
t1PVO+hdckZcrtln5S68w1QJ03ZA9ziwGIBBa8vDVxIq3kOwpnxQROlg/Lyk9iec
MTPZ0NiJp7D37ESm5vJ5bagfhnHvXCoG04qSrCtdr+nN2mK5xFGOTq8TphjsQEGz
+Du5qdWkaJs5UASyofUCQQDsOSNUfbxYNSB/Weq9+fYqPoJPuchwTeMYmxlnvOVm
YGYcUM40wtStdH9mbelHmbS0KYGprlEr3m7jXaO3V08jAkEA0lPe/ymeS2HjxtCj
98p6Xq4RjJuhG0Dn+4e4eRnoVAXs5SQaiByZImW451zm3qEjVWwufRBkSNBkwQ5a
v7ApIwJBAILiRckSwcC97vug/oe0b8iISfuSnJRdE28WwMTRzOkkkG8v9pEVQnG5
Er3WOGMLrywDs2wowaDk5dvkjkmPfrECQQCAhPtoU5gEXAaBABCRY0ou/JKApsBl
FN4sFpykcy5B2XUN92e28DKqkBnSVjREqZYbpoUpqpB85coLJahSJWSdAkBeuWDJ
IVyL/a54qUgTVCoiItJnxXw6WkUtGdvWnMjtTXJBedMAQVgznrTImXNSk5vVXhxJ
wZ3frm2JIy/Es69M
-----END PRIVATE KEY-----

"""
    static let encryptedPEM = """
-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIC5TBfBgkqhkiG9w0BBQ0wUjAxBgkqhkiG9w0BBQwwJAQQDFQJhEPEzjEAo+l7
4Yp6KAICCAAwDAYIKoZIhvcNAgkFADAdBglghkgBZQMEASoEEOrcd425yYhjXmHp
MeQ88QEEggKApsSaBgW63AK0BVoCxYP6LjdIfQQNhHzDrEnHsoRzXJacrW1Hlr7K
rs0v1EhkmZ61Rh0JW7gOpleGNSKT/p7iLWbPPVZJyOAQ7KsYekpXKOnsxYpB7rGw
qk/SvUjjrAcAsuYrw74vCXR+DZIcBI+wXJeagtB86Qd9LW8wA7yEIMdR7zlLYqxm
4F3BEpQOe1bPyUY7wpCx/AoigCRPbX605EQ9ZFabF1ON9NfmY+ctz7ZmIpAyfb/I
HJXT6c571yNiZeZjSbU6hkfOpEHjuNISdgcDf3Z5WdjXcTgpL2SOxsQA89zetu4r
UG+BEPBgHHjAtgvyRkDO2iwl6vEm+kjg/gCh/7KYL79bQqItgLkxMyeFI/o54uGC
M4v262BugyKVD1tLvAZfeb9T7fuz3vx7KiEObJOaix34bhWCPOKMI//1Rj9wkD3E
3SFY58sJ7mp1qu92S4f8F4B3zwKV0kbK/moLCMpxd+JYYOa5jq/UzkAnYnjfn5J5
qzxsBlSmwZH9bflPEBixdrBfEiwvBm12lXOp17w8SjZJYEahn10LMbCJeJo79u64
qEatrvakpwvwgN2/ug6AIWIcBmx0TSMASAN5as76iAseuAcSttOyu3co+poJUTl8
k1M1ht6jbwyT4yIbstW5gv3BT3x5loYaQM38jGGOG6+jEysaZY/pYDHZ/6kUeIYi
IQHNiCTcjd6c5I1AdyVP6KeauyGnQMXIZIG3LQVfCtWxfV8qWa+/RKFp36vcmZAM
TzydwiQQHzJ0GPdj1SwWuKN5UAoKJuNfya6cCAl1DWGswwodQcDWLELRXRknSsq/
6MowghDaWCigAKN7RRYWbzzwkOoaH1KE+w==
-----END ENCRYPTED PRIVATE KEY-----

"""
    static let passphrase = "testpass123"
    static let getSignature = "bdtMchutdQ/1xdN6Gk7mrBYB28Z/q6AsQnRhtQmHJ3N8CNwGyoSvF4hzEvLIySmYZ3BtUXfUDACjpkOooUoGcK38MmBtfyIDly60nQD7Tsy3ktXlsiuRYmn4gtS/Icce+oIwJsEZOUdC9b3BuTzgMkGa2veFz/M/wZjV+Ic216s="
    static let postSignature = "jOBrGjQglDEM9DfluEbrkSDlX72uDuaRR+2yaF7eEoAzpxpDQg4021tpIbPih9SxiF4jCsMRKVh/y6o9LiBnd5KulUJeaIOSDakx57fg1Dn0uRhurd9xzp4P6TgWUcOVvH8wc3FFDlLYnY8M7BeoJ8kC1Ch5Rn6LEsGvGVx+X3Q="
    static let docDate = "Thu, 05 Jan 2014 21:31:40 GMT" // verbatim from Oracle docs
    static let fixedDate = Date(timeIntervalSince1970: 1388957500) // 2014-01-05 21:31:40 UTC (a Sunday)
    static let host = "iaas.us-phoenix-1.oraclecloud.com"
    static let getQuery = [
        "availabilityDomain": "Pjwf: PHX-AD-1",
        "compartmentId": "ocid1.compartment.oc1..aaaaaaaam3we6vgnherjq5q2idnccdflvjsnog7mlr6rtdb25gilchfeyjxa",
        "displayName": "TeamXInstances",
        "volumeId": "ocid1.volume.oc1.phx.abyhqljrgvttnlx73nmrwfaux7kcvzfs3s66izvxf2h4lgvyndsdsnoiwr5q",
    ]
}
