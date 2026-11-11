import Foundation

// MARK: - ListApiMetadataSortByEnum

public enum ListApiMetadataSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListApiMetadataSortByEnum {
    static var allValues: [ListApiMetadataSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListApiMetadataSortByEnum? { ListApiMetadataSortByEnum(rawValue: value) }
}