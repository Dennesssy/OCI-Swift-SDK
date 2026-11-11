import Foundation

// MARK: - ListSdksSortOrderEnum

public enum ListSdksSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListSdksSortOrderEnum {
    static var allValues: [ListSdksSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListSdksSortOrderEnum? { ListSdksSortOrderEnum(rawValue: value) }
}