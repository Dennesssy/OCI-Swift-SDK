import Foundation

// MARK: - ListDelegatedResourceAccessRequestsSortOrderEnum

public enum ListDelegatedResourceAccessRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDelegatedResourceAccessRequestsSortOrderEnum {
    static var allValues: [ListDelegatedResourceAccessRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDelegatedResourceAccessRequestsSortOrderEnum? { ListDelegatedResourceAccessRequestsSortOrderEnum(rawValue: value) }
}