import Foundation

// MARK: - ListDelegationControlsSortOrderEnum

public enum ListDelegationControlsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDelegationControlsSortOrderEnum {
    static var allValues: [ListDelegationControlsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDelegationControlsSortOrderEnum? { ListDelegationControlsSortOrderEnum(rawValue: value) }
}