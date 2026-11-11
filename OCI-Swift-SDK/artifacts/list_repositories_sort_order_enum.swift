import Foundation

// MARK: - ListRepositoriesSortOrderEnum

public enum ListRepositoriesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListRepositoriesSortOrderEnum {
    static var allValues: [ListRepositoriesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListRepositoriesSortOrderEnum? { ListRepositoriesSortOrderEnum(rawValue: value) }
}