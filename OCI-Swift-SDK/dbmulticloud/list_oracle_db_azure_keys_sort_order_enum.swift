import Foundation

// MARK: - ListOracleDbAzureKeysSortOrderEnum

public enum ListOracleDbAzureKeysSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbAzureKeysSortOrderEnum {
    static var allValues: [ListOracleDbAzureKeysSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbAzureKeysSortOrderEnum? { ListOracleDbAzureKeysSortOrderEnum(rawValue: value) }
}