import Foundation

// MARK: - ListCostAlertSubscriptionsSortByEnum

public enum ListCostAlertSubscriptionsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case name = "name"
    case id = "id"
}

public extension ListCostAlertSubscriptionsSortByEnum {
    static var allValues: [ListCostAlertSubscriptionsSortByEnum] { [.timecreated, .name, .id] }
    static var allStringValues: [String] { ["timeCreated", "name", "id"] }
    static func fromString(_ value: String) -> ListCostAlertSubscriptionsSortByEnum? { ListCostAlertSubscriptionsSortByEnum(rawValue: value) }
}