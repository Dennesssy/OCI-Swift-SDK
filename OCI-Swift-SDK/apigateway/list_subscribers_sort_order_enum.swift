import Foundation

// MARK: - ListSubscribersSortOrderEnum

public enum ListSubscribersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListSubscribersSortOrderEnum {
    static var allValues: [ListSubscribersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListSubscribersSortOrderEnum? { ListSubscribersSortOrderEnum(rawValue: value) }
}