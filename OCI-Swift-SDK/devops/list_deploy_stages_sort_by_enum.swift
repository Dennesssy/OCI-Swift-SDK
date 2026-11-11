import Foundation

// MARK: - ListDeployStagesSortByEnum

public enum ListDeployStagesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDeployStagesSortByEnum {
    static var allValues: [ListDeployStagesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDeployStagesSortByEnum? { ListDeployStagesSortByEnum(rawValue: value) }
}