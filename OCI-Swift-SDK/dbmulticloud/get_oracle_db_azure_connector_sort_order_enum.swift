import Foundation

// MARK: - GetOracleDbAzureConnectorSortOrderEnum

public enum GetOracleDbAzureConnectorSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension GetOracleDbAzureConnectorSortOrderEnum {
    static var allValues: [GetOracleDbAzureConnectorSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> GetOracleDbAzureConnectorSortOrderEnum? { GetOracleDbAzureConnectorSortOrderEnum(rawValue: value) }
}