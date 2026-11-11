import Foundation

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum

public enum CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum {
    static var allValues: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum? { CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum(rawValue: value) }
}