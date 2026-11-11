import Foundation

// MARK: - ListSecurityAttributeNamespacesSortOrderEnum

public enum ListSecurityAttributeNamespacesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListSecurityAttributeNamespacesSortOrderEnum {
    static var allValues: [ListSecurityAttributeNamespacesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListSecurityAttributeNamespacesSortOrderEnum? { ListSecurityAttributeNamespacesSortOrderEnum(rawValue: value) }
}