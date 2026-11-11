import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum

public enum UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum {
    static var allValues: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum? { UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum(rawValue: value) }
}