import Foundation

// MARK: - ListBatchTaskProfilesSortOrderEnum

public enum ListBatchTaskProfilesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBatchTaskProfilesSortOrderEnum {
    static var allValues: [ListBatchTaskProfilesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBatchTaskProfilesSortOrderEnum? { ListBatchTaskProfilesSortOrderEnum(rawValue: value) }
}