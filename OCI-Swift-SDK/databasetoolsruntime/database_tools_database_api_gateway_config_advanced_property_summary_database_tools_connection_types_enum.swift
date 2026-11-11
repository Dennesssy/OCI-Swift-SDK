import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDatabaseToolsConnectionTypesEnum

public enum DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDatabaseToolsConnectionTypesEnum: String, Codable, Sendable {
    case oracleDatabase = "ORACLE_DATABASE"
    case mysql = "MYSQL"
}

public extension DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDatabaseToolsConnectionTypesEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDatabaseToolsConnectionTypesEnum] { [.oracleDatabase, .mysql] }
    static var allStringValues: [String] { ["ORACLE_DATABASE", "MYSQL"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDatabaseToolsConnectionTypesEnum? { DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDatabaseToolsConnectionTypesEnum(rawValue: value) }
}