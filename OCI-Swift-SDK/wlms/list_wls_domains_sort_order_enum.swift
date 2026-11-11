import Foundation

// MARK: - ListWlsDomainsSortOrderEnum

public enum ListWlsDomainsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWlsDomainsSortOrderEnum {
    static var allValues: [ListWlsDomainsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWlsDomainsSortOrderEnum? { ListWlsDomainsSortOrderEnum(rawValue: value) }
}