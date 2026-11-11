import Foundation

// MARK: - ListPsaWorkRequestLogsSortOrderEnum

public enum ListPsaWorkRequestLogsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPsaWorkRequestLogsSortOrderEnum {
    static var allValues: [ListPsaWorkRequestLogsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPsaWorkRequestLogsSortOrderEnum? { ListPsaWorkRequestLogsSortOrderEnum(rawValue: value) }
}