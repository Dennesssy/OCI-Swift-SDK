import Foundation

// MARK: - ListIotFlowRuntimesSortByEnum

public enum ListIotFlowRuntimesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListIotFlowRuntimesSortByEnum {
    static var allValues: [ListIotFlowRuntimesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListIotFlowRuntimesSortByEnum? { ListIotFlowRuntimesSortByEnum(rawValue: value) }
}