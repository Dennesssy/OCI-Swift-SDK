import Foundation

// MARK: - ListDomainsSortOrderEnum

public enum ListDomainsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDomainsSortOrderEnum {
    static var allValues: [ListDomainsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDomainsSortOrderEnum? { ListDomainsSortOrderEnum(rawValue: value) }
}