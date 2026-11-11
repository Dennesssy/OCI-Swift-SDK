import Foundation

// MARK: - ListManagedInstancesSortOrderEnum

public enum ListManagedInstancesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListManagedInstancesSortOrderEnum {
    static var allValues: [ListManagedInstancesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListManagedInstancesSortOrderEnum? { ListManagedInstancesSortOrderEnum(rawValue: value) }
}