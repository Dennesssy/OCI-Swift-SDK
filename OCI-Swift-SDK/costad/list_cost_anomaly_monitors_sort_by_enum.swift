import Foundation

// MARK: - ListCostAnomalyMonitorsSortByEnum

public enum ListCostAnomalyMonitorsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case name = "name"
    case id = "id"
}

public extension ListCostAnomalyMonitorsSortByEnum {
    static var allValues: [ListCostAnomalyMonitorsSortByEnum] { [.timecreated, .name, .id] }
    static var allStringValues: [String] { ["timeCreated", "name", "id"] }
    static func fromString(_ value: String) -> ListCostAnomalyMonitorsSortByEnum? { ListCostAnomalyMonitorsSortByEnum(rawValue: value) }
}