import Foundation

// MARK: - DatabaseApiGatewayConfigCertificatePrivateKeyFileNameFormatEnum

public enum DatabaseApiGatewayConfigCertificatePrivateKeyFileNameFormatEnum: String, Codable, Sendable {
    case der = "DER"
    case pem = "PEM"
}

public extension DatabaseApiGatewayConfigCertificatePrivateKeyFileNameFormatEnum {
    static var allValues: [DatabaseApiGatewayConfigCertificatePrivateKeyFileNameFormatEnum] { [.der, .pem] }
    static var allStringValues: [String] { ["DER", "PEM"] }
    static func fromString(_ value: String) -> DatabaseApiGatewayConfigCertificatePrivateKeyFileNameFormatEnum? { DatabaseApiGatewayConfigCertificatePrivateKeyFileNameFormatEnum(rawValue: value) }
}