import Foundation

// MARK: - DatabaseApiGatewayConfigCertificateBundleTypeEnum

public enum DatabaseApiGatewayConfigCertificateBundleTypeEnum: String, Codable, Sendable {
    case filename = "FILENAME"
    case selfSigned = "SELF_SIGNED"
}

public extension DatabaseApiGatewayConfigCertificateBundleTypeEnum {
    static var allValues: [DatabaseApiGatewayConfigCertificateBundleTypeEnum] { [.filename, .selfSigned] }
    static var allStringValues: [String] { ["FILENAME", "SELF_SIGNED"] }
    static func fromString(_ value: String) -> DatabaseApiGatewayConfigCertificateBundleTypeEnum? { DatabaseApiGatewayConfigCertificateBundleTypeEnum(rawValue: value) }
}