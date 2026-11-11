import Foundation

// MARK: - ListMulticloudResourcesSortByEnum

public enum ListMulticloudResourcesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListMulticloudResourcesSortByEnum {
    static var allValues: [ListMulticloudResourcesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListMulticloudResourcesSortByEnum? { ListMulticloudResourcesSortByEnum(rawValue: value) }
}