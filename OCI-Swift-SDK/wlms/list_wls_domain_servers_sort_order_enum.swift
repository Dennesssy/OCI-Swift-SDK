import Foundation

// MARK: - ListWlsDomainServersSortOrderEnum

public enum ListWlsDomainServersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWlsDomainServersSortOrderEnum {
    static var allValues: [ListWlsDomainServersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWlsDomainServersSortOrderEnum? { ListWlsDomainServersSortOrderEnum(rawValue: value) }
}