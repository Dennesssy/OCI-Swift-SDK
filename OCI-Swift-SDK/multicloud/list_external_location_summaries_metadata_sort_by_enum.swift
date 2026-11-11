import Foundation

// MARK: - ListExternalLocationSummariesMetadataSortByEnum

public enum ListExternalLocationSummariesMetadataSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListExternalLocationSummariesMetadataSortByEnum {
    static var allValues: [ListExternalLocationSummariesMetadataSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListExternalLocationSummariesMetadataSortByEnum? { ListExternalLocationSummariesMetadataSortByEnum(rawValue: value) }
}