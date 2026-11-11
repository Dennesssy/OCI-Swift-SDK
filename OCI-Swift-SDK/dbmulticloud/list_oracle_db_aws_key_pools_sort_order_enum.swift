import Foundation

// MARK: - ListOracleDbAwsKeyPoolsSortOrderEnum

public enum ListOracleDbAwsKeyPoolsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbAwsKeyPoolsSortOrderEnum {
    static var allValues: [ListOracleDbAwsKeyPoolsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbAwsKeyPoolsSortOrderEnum? { ListOracleDbAwsKeyPoolsSortOrderEnum(rawValue: value) }
}