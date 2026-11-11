import Foundation

// MARK: - ListBuildPipelinesSortByEnum

public enum ListBuildPipelinesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListBuildPipelinesSortByEnum {
    static var allValues: [ListBuildPipelinesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListBuildPipelinesSortByEnum? { ListBuildPipelinesSortByEnum(rawValue: value) }
}