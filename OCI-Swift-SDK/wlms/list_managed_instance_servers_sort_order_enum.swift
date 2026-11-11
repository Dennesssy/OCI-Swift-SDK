import Foundation

// MARK: - ListManagedInstanceServersSortOrderEnum

public enum ListManagedInstanceServersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListManagedInstanceServersSortOrderEnum {
    static var allValues: [ListManagedInstanceServersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListManagedInstanceServersSortOrderEnum? { ListManagedInstanceServersSortOrderEnum(rawValue: value) }
}