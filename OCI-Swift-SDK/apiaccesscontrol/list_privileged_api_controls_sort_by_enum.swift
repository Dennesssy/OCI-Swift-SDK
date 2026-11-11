import Foundation

// MARK: - ListPrivilegedApiControlsSortByEnum

public enum ListPrivilegedApiControlsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListPrivilegedApiControlsSortByEnum {
    static var allValues: [ListPrivilegedApiControlsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListPrivilegedApiControlsSortByEnum? { ListPrivilegedApiControlsSortByEnum(rawValue: value) }
}