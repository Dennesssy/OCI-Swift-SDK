import Foundation

// MARK: - ListMonitoredRegionsSortOrderEnum

public enum ListMonitoredRegionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMonitoredRegionsSortOrderEnum {
    static var allValues: [ListMonitoredRegionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMonitoredRegionsSortOrderEnum? { ListMonitoredRegionsSortOrderEnum(rawValue: value) }
}