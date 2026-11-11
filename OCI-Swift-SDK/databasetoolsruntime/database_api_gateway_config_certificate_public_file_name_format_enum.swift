import Foundation

// MARK: - DatabaseApiGatewayConfigCertificatePublicFileNameFormatEnum

public enum DatabaseApiGatewayConfigCertificatePublicFileNameFormatEnum: String, Codable, Sendable {
    case pem = "PEM"
}

public extension DatabaseApiGatewayConfigCertificatePublicFileNameFormatEnum {
    static var allValues: [DatabaseApiGatewayConfigCertificatePublicFileNameFormatEnum] { [.pem] }
    static var allStringValues: [String] { ["PEM"] }
    static func fromString(_ value: String) -> DatabaseApiGatewayConfigCertificatePublicFileNameFormatEnum? { DatabaseApiGatewayConfigCertificatePublicFileNameFormatEnum(rawValue: value) }
}