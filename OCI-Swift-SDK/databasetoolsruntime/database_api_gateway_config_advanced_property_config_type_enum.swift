import Foundation

// MARK: - DatabaseApiGatewayConfigAdvancedPropertyConfigTypeEnum

public enum DatabaseApiGatewayConfigAdvancedPropertyConfigTypeEnum: String, Codable, Sendable {
    case global = "GLOBAL"
    case pool = "POOL"
}

public extension DatabaseApiGatewayConfigAdvancedPropertyConfigTypeEnum {
    static var allValues: [DatabaseApiGatewayConfigAdvancedPropertyConfigTypeEnum] { [.global, .pool] }
    static var allStringValues: [String] { ["GLOBAL", "POOL"] }
    static func fromString(_ value: String) -> DatabaseApiGatewayConfigAdvancedPropertyConfigTypeEnum? { DatabaseApiGatewayConfigAdvancedPropertyConfigTypeEnum(rawValue: value) }
}