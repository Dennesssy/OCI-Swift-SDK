import Foundation

// MARK: - ListOnPremiseVantagePointsSortOrderEnum

public enum ListOnPremiseVantagePointsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOnPremiseVantagePointsSortOrderEnum {
    static var allValues: [ListOnPremiseVantagePointsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOnPremiseVantagePointsSortOrderEnum? { ListOnPremiseVantagePointsSortOrderEnum(rawValue: value) }
}