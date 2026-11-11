import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigLifecycleStateEnum

public enum DatabaseToolsDatabaseApiGatewayConfigLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleted = "DELETED"
}

public extension DatabaseToolsDatabaseApiGatewayConfigLifecycleStateEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigLifecycleStateEnum] { [.active, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "DELETED"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigLifecycleStateEnum? { DatabaseToolsDatabaseApiGatewayConfigLifecycleStateEnum(rawValue: value) }
}