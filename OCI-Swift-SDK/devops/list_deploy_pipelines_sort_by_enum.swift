import Foundation

// MARK: - ListDeployPipelinesSortByEnum

public enum ListDeployPipelinesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDeployPipelinesSortByEnum {
    static var allValues: [ListDeployPipelinesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDeployPipelinesSortByEnum? { ListDeployPipelinesSortByEnum(rawValue: value) }
}