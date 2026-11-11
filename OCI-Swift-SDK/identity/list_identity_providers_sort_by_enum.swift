import Foundation

// MARK: - ListIdentityProvidersSortByEnum

public enum ListIdentityProvidersSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListIdentityProvidersSortByEnum {
    static var allValues: [ListIdentityProvidersSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListIdentityProvidersSortByEnum? { ListIdentityProvidersSortByEnum(rawValue: value) }
}