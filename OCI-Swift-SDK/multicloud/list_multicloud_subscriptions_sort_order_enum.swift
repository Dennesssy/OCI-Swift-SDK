import Foundation

// MARK: - ListMulticloudSubscriptionsSortOrderEnum

public enum ListMulticloudSubscriptionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMulticloudSubscriptionsSortOrderEnum {
    static var allValues: [ListMulticloudSubscriptionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMulticloudSubscriptionsSortOrderEnum? { ListMulticloudSubscriptionsSortOrderEnum(rawValue: value) }
}