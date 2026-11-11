import Foundation

// MARK: - ListRefsSortByEnum

public enum ListRefsSortByEnum: String, Codable, Sendable {
    case reftype = "refType"
    case refname = "refName"
    case timeupdated = "timeUpdated"
}

public extension ListRefsSortByEnum {
    static var allValues: [ListRefsSortByEnum] { [.reftype, .refname, .timeupdated] }
    static var allStringValues: [String] { ["refType", "refName", "timeUpdated"] }
    static func fromString(_ value: String) -> ListRefsSortByEnum? { ListRefsSortByEnum(rawValue: value) }
}