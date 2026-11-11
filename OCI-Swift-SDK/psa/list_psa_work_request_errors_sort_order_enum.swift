import Foundation

// MARK: - ListPsaWorkRequestErrorsSortOrderEnum

public enum ListPsaWorkRequestErrorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPsaWorkRequestErrorsSortOrderEnum {
    static var allValues: [ListPsaWorkRequestErrorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPsaWorkRequestErrorsSortOrderEnum? { ListPsaWorkRequestErrorsSortOrderEnum(rawValue: value) }
}