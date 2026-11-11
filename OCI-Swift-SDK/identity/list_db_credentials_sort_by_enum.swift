import Foundation

// MARK: - ListDbCredentialsSortByEnum

public enum ListDbCredentialsSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListDbCredentialsSortByEnum {
    static var allValues: [ListDbCredentialsSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListDbCredentialsSortByEnum? { ListDbCredentialsSortByEnum(rawValue: value) }
}