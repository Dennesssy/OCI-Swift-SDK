import Foundation

// MARK: - DatabaseApiGatewayConfigTypeEnum

public enum DatabaseApiGatewayConfigTypeEnum: String, Codable, Sendable {
    case `default` = "DEFAULT"
}

public extension DatabaseApiGatewayConfigTypeEnum {
    static var allValues: [DatabaseApiGatewayConfigTypeEnum] { [.`default`] }
    static var allStringValues: [String] { ["DEFAULT"] }
    static func fromString(_ value: String) -> DatabaseApiGatewayConfigTypeEnum? { DatabaseApiGatewayConfigTypeEnum(rawValue: value) }
}