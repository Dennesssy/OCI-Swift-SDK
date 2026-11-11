import Foundation

// MARK: - ListPsaWorkRequestsSortOrderEnum

public enum ListPsaWorkRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPsaWorkRequestsSortOrderEnum {
    static var allValues: [ListPsaWorkRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPsaWorkRequestsSortOrderEnum? { ListPsaWorkRequestsSortOrderEnum(rawValue: value) }
}