import Foundation

// MARK: - ListSandboxesSortByEnum

public enum ListSandboxesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListSandboxesSortByEnum {
    static var allValues: [ListSandboxesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListSandboxesSortByEnum? { ListSandboxesSortByEnum(rawValue: value) }
}