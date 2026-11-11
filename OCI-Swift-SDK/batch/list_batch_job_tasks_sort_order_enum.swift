import Foundation

// MARK: - ListBatchJobTasksSortOrderEnum

public enum ListBatchJobTasksSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBatchJobTasksSortOrderEnum {
    static var allValues: [ListBatchJobTasksSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBatchJobTasksSortOrderEnum? { ListBatchJobTasksSortOrderEnum(rawValue: value) }
}