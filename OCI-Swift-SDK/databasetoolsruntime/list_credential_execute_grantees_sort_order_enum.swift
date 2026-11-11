import Foundation

// MARK: - ListCredentialExecuteGranteesSortOrderEnum

public enum ListCredentialExecuteGranteesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListCredentialExecuteGranteesSortOrderEnum {
    static var allValues: [ListCredentialExecuteGranteesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListCredentialExecuteGranteesSortOrderEnum? { ListCredentialExecuteGranteesSortOrderEnum(rawValue: value) }
}