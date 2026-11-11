import Foundation

// MARK: - ListAgentEndpointsSortByEnum

public enum ListAgentEndpointsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListAgentEndpointsSortByEnum {
    static var allValues: [ListAgentEndpointsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListAgentEndpointsSortByEnum? { ListAgentEndpointsSortByEnum(rawValue: value) }
}