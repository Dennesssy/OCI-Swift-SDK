import Foundation

// MARK: - ListGdpWorkRequestsSortOrderEnum

public enum ListGdpWorkRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListGdpWorkRequestsSortOrderEnum {
    static var allValues: [ListGdpWorkRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListGdpWorkRequestsSortOrderEnum? { ListGdpWorkRequestsSortOrderEnum(rawValue: value) }
}