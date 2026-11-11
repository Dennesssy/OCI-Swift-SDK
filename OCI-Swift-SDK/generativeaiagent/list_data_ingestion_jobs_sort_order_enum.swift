import Foundation

// MARK: - ListDataIngestionJobsSortOrderEnum

public enum ListDataIngestionJobsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDataIngestionJobsSortOrderEnum {
    static var allValues: [ListDataIngestionJobsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDataIngestionJobsSortOrderEnum? { ListDataIngestionJobsSortOrderEnum(rawValue: value) }
}