import Foundation

// MARK: - ListResourceAnalyticsInstancesSortOrderEnum

public enum ListResourceAnalyticsInstancesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListResourceAnalyticsInstancesSortOrderEnum {
    static var allValues: [ListResourceAnalyticsInstancesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListResourceAnalyticsInstancesSortOrderEnum? { ListResourceAnalyticsInstancesSortOrderEnum(rawValue: value) }
}