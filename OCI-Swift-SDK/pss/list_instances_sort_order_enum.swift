import Foundation

// MARK: - ListInstancesSortOrderEnum

public enum ListInstancesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListInstancesSortOrderEnum {
    static var allValues: [ListInstancesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListInstancesSortOrderEnum? { ListInstancesSortOrderEnum(rawValue: value) }
}