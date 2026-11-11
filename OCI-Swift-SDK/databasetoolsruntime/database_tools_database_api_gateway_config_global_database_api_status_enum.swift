import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum

public enum DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum? { DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum(rawValue: value) }
}