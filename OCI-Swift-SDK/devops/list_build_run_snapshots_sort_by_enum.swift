import Foundation

// MARK: - ListBuildRunSnapshotsSortByEnum

public enum ListBuildRunSnapshotsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case name = "name"
}

public extension ListBuildRunSnapshotsSortByEnum {
    static var allValues: [ListBuildRunSnapshotsSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["timeCreated", "name"] }
    static func fromString(_ value: String) -> ListBuildRunSnapshotsSortByEnum? { ListBuildRunSnapshotsSortByEnum(rawValue: value) }
}