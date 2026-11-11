import Foundation

// MARK: - ListGdpWorkRequestErrorsSortOrderEnum

public enum ListGdpWorkRequestErrorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListGdpWorkRequestErrorsSortOrderEnum {
    static var allValues: [ListGdpWorkRequestErrorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListGdpWorkRequestErrorsSortOrderEnum? { ListGdpWorkRequestErrorsSortOrderEnum(rawValue: value) }
}