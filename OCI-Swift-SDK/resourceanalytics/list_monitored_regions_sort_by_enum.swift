import Foundation

// MARK: - ListMonitoredRegionsSortByEnum

public enum ListMonitoredRegionsSortByEnum: String, Codable, Sendable {
    case timeCreated = "TIME_CREATED"
    case regionId = "REGION_ID"
}

public extension ListMonitoredRegionsSortByEnum {
    static var allValues: [ListMonitoredRegionsSortByEnum] { [.timeCreated, .regionId] }
    static var allStringValues: [String] { ["TIME_CREATED", "REGION_ID"] }
    static func fromString(_ value: String) -> ListMonitoredRegionsSortByEnum? { ListMonitoredRegionsSortByEnum(rawValue: value) }
}