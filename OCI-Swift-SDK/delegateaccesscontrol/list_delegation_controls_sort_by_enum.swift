import Foundation

// MARK: - ListDelegationControlsSortByEnum

public enum ListDelegationControlsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDelegationControlsSortByEnum {
    static var allValues: [ListDelegationControlsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDelegationControlsSortByEnum? { ListDelegationControlsSortByEnum(rawValue: value) }
}