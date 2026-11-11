import Foundation

// MARK: - ListPrivateServiceAccessesSortOrderEnum

public enum ListPrivateServiceAccessesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPrivateServiceAccessesSortOrderEnum {
    static var allValues: [ListPrivateServiceAccessesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPrivateServiceAccessesSortOrderEnum? { ListPrivateServiceAccessesSortOrderEnum(rawValue: value) }
}