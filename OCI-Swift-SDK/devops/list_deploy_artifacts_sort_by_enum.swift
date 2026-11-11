import Foundation

// MARK: - ListDeployArtifactsSortByEnum

public enum ListDeployArtifactsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDeployArtifactsSortByEnum {
    static var allValues: [ListDeployArtifactsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDeployArtifactsSortByEnum? { ListDeployArtifactsSortByEnum(rawValue: value) }
}