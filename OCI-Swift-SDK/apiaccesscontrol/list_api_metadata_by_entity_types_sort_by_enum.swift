import Foundation

// MARK: - ListApiMetadataByEntityTypesSortByEnum

public enum ListApiMetadataByEntityTypesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListApiMetadataByEntityTypesSortByEnum {
    static var allValues: [ListApiMetadataByEntityTypesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListApiMetadataByEntityTypesSortByEnum? { ListApiMetadataByEntityTypesSortByEnum(rawValue: value) }
}