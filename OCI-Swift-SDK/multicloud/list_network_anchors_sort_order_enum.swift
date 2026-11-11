import Foundation

// MARK: - ListNetworkAnchorsSortOrderEnum

public enum ListNetworkAnchorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListNetworkAnchorsSortOrderEnum {
    static var allValues: [ListNetworkAnchorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListNetworkAnchorsSortOrderEnum? { ListNetworkAnchorsSortOrderEnum(rawValue: value) }
}