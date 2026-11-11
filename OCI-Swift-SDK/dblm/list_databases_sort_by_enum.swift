import Foundation

// MARK: - ListDatabasesSortByEnum

public enum ListDatabasesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case name = "name"
    case resourcetype = "resourceType"
    case release = "release"
    case subscribedimage = "subscribedImage"
    case patchcompliance = "patchCompliance"
}

public extension ListDatabasesSortByEnum {
    static var allValues: [ListDatabasesSortByEnum] { [.timecreated, .name, .resourcetype, .release, .subscribedimage, .patchcompliance] }
    static var allStringValues: [String] { ["timeCreated", "name", "resourceType", "release", "subscribedImage", "patchCompliance"] }
    static func fromString(_ value: String) -> ListDatabasesSortByEnum? { ListDatabasesSortByEnum(rawValue: value) }
}