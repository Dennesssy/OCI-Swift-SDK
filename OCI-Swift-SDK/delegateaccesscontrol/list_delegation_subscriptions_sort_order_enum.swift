import Foundation

// MARK: - ListDelegationSubscriptionsSortOrderEnum

public enum ListDelegationSubscriptionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDelegationSubscriptionsSortOrderEnum {
    static var allValues: [ListDelegationSubscriptionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDelegationSubscriptionsSortOrderEnum? { ListDelegationSubscriptionsSortOrderEnum(rawValue: value) }
}