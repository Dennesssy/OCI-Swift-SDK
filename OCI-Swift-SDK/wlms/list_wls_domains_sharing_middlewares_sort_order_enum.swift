import Foundation

// MARK: - ListWlsDomainsSharingMiddlewaresSortOrderEnum

public enum ListWlsDomainsSharingMiddlewaresSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWlsDomainsSharingMiddlewaresSortOrderEnum {
    static var allValues: [ListWlsDomainsSharingMiddlewaresSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWlsDomainsSharingMiddlewaresSortOrderEnum? { ListWlsDomainsSharingMiddlewaresSortOrderEnum(rawValue: value) }
}