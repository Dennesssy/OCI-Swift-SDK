import Foundation

// MARK: - ListMultiCloudResourceDiscoveriesSortByEnum

public enum ListMultiCloudResourceDiscoveriesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListMultiCloudResourceDiscoveriesSortByEnum {
    static var allValues: [ListMultiCloudResourceDiscoveriesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListMultiCloudResourceDiscoveriesSortByEnum? { ListMultiCloudResourceDiscoveriesSortByEnum(rawValue: value) }
}