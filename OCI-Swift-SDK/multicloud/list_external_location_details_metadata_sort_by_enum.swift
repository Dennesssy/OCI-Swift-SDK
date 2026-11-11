import Foundation

// MARK: - ListExternalLocationDetailsMetadataSortByEnum

public enum ListExternalLocationDetailsMetadataSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListExternalLocationDetailsMetadataSortByEnum {
    static var allValues: [ListExternalLocationDetailsMetadataSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListExternalLocationDetailsMetadataSortByEnum? { ListExternalLocationDetailsMetadataSortByEnum(rawValue: value) }
}