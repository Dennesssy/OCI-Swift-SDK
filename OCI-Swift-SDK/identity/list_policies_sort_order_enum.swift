import Foundation

// MARK: - ListPoliciesSortOrderEnum

public enum ListPoliciesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPoliciesSortOrderEnum {
    static var allValues: [ListPoliciesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPoliciesSortOrderEnum? { ListPoliciesSortOrderEnum(rawValue: value) }
}