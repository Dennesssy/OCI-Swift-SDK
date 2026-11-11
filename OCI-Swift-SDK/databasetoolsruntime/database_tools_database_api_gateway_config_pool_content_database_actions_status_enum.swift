import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolContentDatabaseActionsStatusEnum

public enum DatabaseToolsDatabaseApiGatewayConfigPoolContentDatabaseActionsStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension DatabaseToolsDatabaseApiGatewayConfigPoolContentDatabaseActionsStatusEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigPoolContentDatabaseActionsStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigPoolContentDatabaseActionsStatusEnum? { DatabaseToolsDatabaseApiGatewayConfigPoolContentDatabaseActionsStatusEnum(rawValue: value) }
}