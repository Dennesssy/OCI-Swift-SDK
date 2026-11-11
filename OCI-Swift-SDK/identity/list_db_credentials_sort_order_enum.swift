import Foundation

// MARK: - ListDbCredentialsSortOrderEnum

public enum ListDbCredentialsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDbCredentialsSortOrderEnum {
    static var allValues: [ListDbCredentialsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDbCredentialsSortOrderEnum? { ListDbCredentialsSortOrderEnum(rawValue: value) }
}