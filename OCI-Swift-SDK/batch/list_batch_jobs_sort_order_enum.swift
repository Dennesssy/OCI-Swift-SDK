import Foundation

// MARK: - ListBatchJobsSortOrderEnum

public enum ListBatchJobsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBatchJobsSortOrderEnum {
    static var allValues: [ListBatchJobsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBatchJobsSortOrderEnum? { ListBatchJobsSortOrderEnum(rawValue: value) }
}