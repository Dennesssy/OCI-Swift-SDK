import Foundation

// MARK: - ListPrivilegedApiRequestsSortByEnum

public enum ListPrivilegedApiRequestsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListPrivilegedApiRequestsSortByEnum {
    static var allValues: [ListPrivilegedApiRequestsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListPrivilegedApiRequestsSortByEnum? { ListPrivilegedApiRequestsSortByEnum(rawValue: value) }
}