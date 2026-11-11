import Foundation

// MARK: - ListVmInstancesSortByEnum

public enum ListVmInstancesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
    case buildidentifier = "buildIdentifier"
}

public extension ListVmInstancesSortByEnum {
    static var allValues: [ListVmInstancesSortByEnum] { [.timecreated, .displayname, .buildidentifier] }
    static var allStringValues: [String] { ["timeCreated", "displayName", "buildIdentifier"] }
    static func fromString(_ value: String) -> ListVmInstancesSortByEnum? { ListVmInstancesSortByEnum(rawValue: value) }
}