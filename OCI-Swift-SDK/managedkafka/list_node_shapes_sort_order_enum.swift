import Foundation

// MARK: - ListNodeShapesSortOrderEnum

public enum ListNodeShapesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListNodeShapesSortOrderEnum {
    static var allValues: [ListNodeShapesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListNodeShapesSortOrderEnum? { ListNodeShapesSortOrderEnum(rawValue: value) }
}