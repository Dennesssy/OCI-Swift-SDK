import Foundation

// MARK: - ListUserCredentialsSortOrderEnum

public enum ListUserCredentialsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListUserCredentialsSortOrderEnum {
    static var allValues: [ListUserCredentialsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListUserCredentialsSortOrderEnum? { ListUserCredentialsSortOrderEnum(rawValue: value) }
}