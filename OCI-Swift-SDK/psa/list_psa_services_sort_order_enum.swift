import Foundation

// MARK: - ListPsaServicesSortOrderEnum

public enum ListPsaServicesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPsaServicesSortOrderEnum {
    static var allValues: [ListPsaServicesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPsaServicesSortOrderEnum? { ListPsaServicesSortOrderEnum(rawValue: value) }
}