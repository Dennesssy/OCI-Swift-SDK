import Foundation

// MARK: - ListDeploymentsSortByEnum

public enum ListDeploymentsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDeploymentsSortByEnum {
    static var allValues: [ListDeploymentsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDeploymentsSortByEnum? { ListDeploymentsSortByEnum(rawValue: value) }
}