import Foundation

// MARK: - DatabaseApiGatewayConfigGlobalKeyEnum

public enum DatabaseApiGatewayConfigGlobalKeyEnum: String, Codable, Sendable {
    case settings = "SETTINGS"
}

public extension DatabaseApiGatewayConfigGlobalKeyEnum {
    static var allValues: [DatabaseApiGatewayConfigGlobalKeyEnum] { [.settings] }
    static var allStringValues: [String] { ["SETTINGS"] }
    static func fromString(_ value: String) -> DatabaseApiGatewayConfigGlobalKeyEnum? { DatabaseApiGatewayConfigGlobalKeyEnum(rawValue: value) }
}