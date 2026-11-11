import Foundation

// MARK: - ListExternalLocationMappingMetadataSortByEnum

public enum ListExternalLocationMappingMetadataSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListExternalLocationMappingMetadataSortByEnum {
    static var allValues: [ListExternalLocationMappingMetadataSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListExternalLocationMappingMetadataSortByEnum? { ListExternalLocationMappingMetadataSortByEnum(rawValue: value) }
}