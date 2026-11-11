import Foundation

// MARK: - ListWorkersSortOrderEnum

public enum ListWorkersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWorkersSortOrderEnum {
    static var allValues: [ListWorkersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWorkersSortOrderEnum? { ListWorkersSortOrderEnum(rawValue: value) }
}