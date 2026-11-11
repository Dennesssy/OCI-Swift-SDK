import Foundation

// MARK: - SortByForCostAdEnum

public enum SortByForCostAdEnum: String, Codable, Sendable {
    case timeCreated = "timeCreated"
    case name = "name"
    case id = "id"
}

public extension SortByForCostAdEnum {
    static var allValues: [SortByForCostAdEnum] { [.timeCreated, .name, .id] }
    static var allStringValues: [String] { ["timeCreated", "name", "id"] }
    static func fromString(_ value: String) -> SortByForCostAdEnum? { SortByForCostAdEnum(rawValue: value) }
}