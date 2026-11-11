import Foundation

// MARK: - ListBatchJobPoolsSortOrderEnum

public enum ListBatchJobPoolsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBatchJobPoolsSortOrderEnum {
    static var allValues: [ListBatchJobPoolsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBatchJobPoolsSortOrderEnum? { ListBatchJobPoolsSortOrderEnum(rawValue: value) }
}