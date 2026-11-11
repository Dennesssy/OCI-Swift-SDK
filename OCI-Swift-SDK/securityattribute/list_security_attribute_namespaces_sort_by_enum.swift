import Foundation

// MARK: - ListSecurityAttributeNamespacesSortByEnum

public enum ListSecurityAttributeNamespacesSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListSecurityAttributeNamespacesSortByEnum {
    static var allValues: [ListSecurityAttributeNamespacesSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListSecurityAttributeNamespacesSortByEnum? { ListSecurityAttributeNamespacesSortByEnum(rawValue: value) }
}