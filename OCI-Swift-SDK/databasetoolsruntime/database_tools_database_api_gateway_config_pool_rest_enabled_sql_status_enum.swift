import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum

public enum DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum? { DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum(rawValue: value) }
}