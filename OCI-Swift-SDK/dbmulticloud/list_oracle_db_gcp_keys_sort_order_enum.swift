import Foundation

// MARK: - ListOracleDbGcpKeysSortOrderEnum

public enum ListOracleDbGcpKeysSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbGcpKeysSortOrderEnum {
    static var allValues: [ListOracleDbGcpKeysSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbGcpKeysSortOrderEnum? { ListOracleDbGcpKeysSortOrderEnum(rawValue: value) }
}