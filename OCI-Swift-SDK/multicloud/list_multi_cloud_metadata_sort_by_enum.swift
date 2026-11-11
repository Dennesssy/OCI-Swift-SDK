import Foundation

// MARK: - ListMultiCloudMetadataSortByEnum

public enum ListMultiCloudMetadataSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListMultiCloudMetadataSortByEnum {
    static var allValues: [ListMultiCloudMetadataSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListMultiCloudMetadataSortByEnum? { ListMultiCloudMetadataSortByEnum(rawValue: value) }
}