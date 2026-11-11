import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum

public enum DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum? { DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum(rawValue: value) }
}