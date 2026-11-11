import Foundation

// MARK: - ListGdpWorkRequestLogsSortOrderEnum

public enum ListGdpWorkRequestLogsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListGdpWorkRequestLogsSortOrderEnum {
    static var allValues: [ListGdpWorkRequestLogsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListGdpWorkRequestLogsSortOrderEnum? { ListGdpWorkRequestLogsSortOrderEnum(rawValue: value) }
}