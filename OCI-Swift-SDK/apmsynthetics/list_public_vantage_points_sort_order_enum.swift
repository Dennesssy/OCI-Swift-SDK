import Foundation

// MARK: - ListPublicVantagePointsSortOrderEnum

public enum ListPublicVantagePointsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPublicVantagePointsSortOrderEnum {
    static var allValues: [ListPublicVantagePointsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPublicVantagePointsSortOrderEnum? { ListPublicVantagePointsSortOrderEnum(rawValue: value) }
}