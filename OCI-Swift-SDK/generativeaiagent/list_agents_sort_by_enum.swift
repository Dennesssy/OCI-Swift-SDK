import Foundation

// MARK: - ListAgentsSortByEnum

public enum ListAgentsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListAgentsSortByEnum {
    static var allValues: [ListAgentsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListAgentsSortByEnum? { ListAgentsSortByEnum(rawValue: value) }
}