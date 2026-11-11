import Foundation

// MARK: - ListProtectedBranchesSortOrderEnum

public enum ListProtectedBranchesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListProtectedBranchesSortOrderEnum {
    static var allValues: [ListProtectedBranchesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListProtectedBranchesSortOrderEnum? { ListProtectedBranchesSortOrderEnum(rawValue: value) }
}