import Foundation

// MARK: - ListIotDomainGroupsSortOrderEnum

public enum ListIotDomainGroupsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListIotDomainGroupsSortOrderEnum {
    static var allValues: [ListIotDomainGroupsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListIotDomainGroupsSortOrderEnum? { ListIotDomainGroupsSortOrderEnum(rawValue: value) }
}