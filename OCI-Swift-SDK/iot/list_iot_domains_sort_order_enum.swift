import Foundation

// MARK: - ListIotDomainsSortOrderEnum

public enum ListIotDomainsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListIotDomainsSortOrderEnum {
    static var allValues: [ListIotDomainsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListIotDomainsSortOrderEnum? { ListIotDomainsSortOrderEnum(rawValue: value) }
}