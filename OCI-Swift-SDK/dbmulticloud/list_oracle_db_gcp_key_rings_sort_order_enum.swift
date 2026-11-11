import Foundation

// MARK: - ListOracleDbGcpKeyRingsSortOrderEnum

public enum ListOracleDbGcpKeyRingsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbGcpKeyRingsSortOrderEnum {
    static var allValues: [ListOracleDbGcpKeyRingsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbGcpKeyRingsSortOrderEnum? { ListOracleDbGcpKeyRingsSortOrderEnum(rawValue: value) }
}