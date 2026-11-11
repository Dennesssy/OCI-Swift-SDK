import Foundation

// MARK: - ListNetworkSourcesSortOrderEnum

public enum ListNetworkSourcesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListNetworkSourcesSortOrderEnum {
    static var allValues: [ListNetworkSourcesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListNetworkSourcesSortOrderEnum? { ListNetworkSourcesSortOrderEnum(rawValue: value) }
}