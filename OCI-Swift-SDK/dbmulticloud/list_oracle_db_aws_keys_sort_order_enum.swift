import Foundation

// MARK: - ListOracleDbAwsKeysSortOrderEnum

public enum ListOracleDbAwsKeysSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbAwsKeysSortOrderEnum {
    static var allValues: [ListOracleDbAwsKeysSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbAwsKeysSortOrderEnum? { ListOracleDbAwsKeysSortOrderEnum(rawValue: value) }
}