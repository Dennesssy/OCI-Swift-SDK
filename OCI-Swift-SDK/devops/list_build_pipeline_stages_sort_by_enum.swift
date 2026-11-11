import Foundation

// MARK: - ListBuildPipelineStagesSortByEnum

public enum ListBuildPipelineStagesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListBuildPipelineStagesSortByEnum {
    static var allValues: [ListBuildPipelineStagesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListBuildPipelineStagesSortByEnum? { ListBuildPipelineStagesSortByEnum(rawValue: value) }
}