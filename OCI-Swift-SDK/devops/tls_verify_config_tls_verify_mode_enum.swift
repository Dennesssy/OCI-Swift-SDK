import Foundation

// MARK: - TlsVerifyConfigTlsVerifyModeEnum

public enum TlsVerifyConfigTlsVerifyModeEnum: String, Codable, Sendable {
    case caCertificateVerify = "CA_CERTIFICATE_VERIFY"
}

public extension TlsVerifyConfigTlsVerifyModeEnum {
    static var allValues: [TlsVerifyConfigTlsVerifyModeEnum] { [.caCertificateVerify] }
    static var allStringValues: [String] { ["CA_CERTIFICATE_VERIFY"] }
    static func fromString(_ value: String) -> TlsVerifyConfigTlsVerifyModeEnum? { TlsVerifyConfigTlsVerifyModeEnum(rawValue: value) }
}