import Foundation

// MARK: - ListDedicatedVantagePointsSortOrderEnum

public enum ListDedicatedVantagePointsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDedicatedVantagePointsSortOrderEnum {
    static var allValues: [ListDedicatedVantagePointsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDedicatedVantagePointsSortOrderEnum? { ListDedicatedVantagePointsSortOrderEnum(rawValue: value) }
}