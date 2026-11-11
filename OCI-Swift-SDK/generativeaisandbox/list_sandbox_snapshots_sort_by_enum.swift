import Foundation

// MARK: - ListSandboxSnapshotsSortByEnum

public enum ListSandboxSnapshotsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListSandboxSnapshotsSortByEnum {
    static var allValues: [ListSandboxSnapshotsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListSandboxSnapshotsSortByEnum? { ListSandboxSnapshotsSortByEnum(rawValue: value) }
}