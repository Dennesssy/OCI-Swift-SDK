import Foundation

// MARK: - ListCredentialsSortOrderEnum

public enum ListCredentialsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListCredentialsSortOrderEnum {
    static var allValues: [ListCredentialsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListCredentialsSortOrderEnum? { ListCredentialsSortOrderEnum(rawValue: value) }
}