import Foundation

// MARK: - ListBatchContextsSortOrderEnum

public enum ListBatchContextsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBatchContextsSortOrderEnum {
    static var allValues: [ListBatchContextsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBatchContextsSortOrderEnum? { ListBatchContextsSortOrderEnum(rawValue: value) }
}