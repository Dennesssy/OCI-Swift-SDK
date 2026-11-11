import Foundation

// MARK: - ListGdpPipelinesSortByEnum

public enum ListGdpPipelinesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListGdpPipelinesSortByEnum {
    static var allValues: [ListGdpPipelinesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListGdpPipelinesSortByEnum? { ListGdpPipelinesSortByEnum(rawValue: value) }
}