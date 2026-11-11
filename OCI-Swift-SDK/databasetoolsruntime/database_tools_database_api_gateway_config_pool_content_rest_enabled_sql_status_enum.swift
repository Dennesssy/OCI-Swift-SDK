import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolContentRestEnabledSqlStatusEnum

public enum DatabaseToolsDatabaseApiGatewayConfigPoolContentRestEnabledSqlStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension DatabaseToolsDatabaseApiGatewayConfigPoolContentRestEnabledSqlStatusEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigPoolContentRestEnabledSqlStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigPoolContentRestEnabledSqlStatusEnum? { DatabaseToolsDatabaseApiGatewayConfigPoolContentRestEnabledSqlStatusEnum(rawValue: value) }
}