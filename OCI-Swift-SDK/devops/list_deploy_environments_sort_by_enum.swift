import Foundation

// MARK: - ListDeployEnvironmentsSortByEnum

public enum ListDeployEnvironmentsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDeployEnvironmentsSortByEnum {
    static var allValues: [ListDeployEnvironmentsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDeployEnvironmentsSortByEnum? { ListDeployEnvironmentsSortByEnum(rawValue: value) }
}