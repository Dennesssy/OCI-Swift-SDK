import Foundation

// MARK: - ListBatchTasksSortOrderEnum

public enum ListBatchTasksSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBatchTasksSortOrderEnum {
    static var allValues: [ListBatchTasksSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBatchTasksSortOrderEnum? { ListBatchTasksSortOrderEnum(rawValue: value) }
}