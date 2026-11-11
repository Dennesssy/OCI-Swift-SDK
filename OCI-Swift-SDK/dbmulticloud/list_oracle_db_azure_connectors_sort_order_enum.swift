import Foundation

// MARK: - ListOracleDbAzureConnectorsSortOrderEnum

public enum ListOracleDbAzureConnectorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbAzureConnectorsSortOrderEnum {
    static var allValues: [ListOracleDbAzureConnectorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbAzureConnectorsSortOrderEnum? { ListOracleDbAzureConnectorsSortOrderEnum(rawValue: value) }
}