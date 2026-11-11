import Foundation

// MARK: - ListUsagePlansSortOrderEnum

public enum ListUsagePlansSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListUsagePlansSortOrderEnum {
    static var allValues: [ListUsagePlansSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListUsagePlansSortOrderEnum? { ListUsagePlansSortOrderEnum(rawValue: value) }
}