import Foundation

// MARK: - ListVulnerabilitiesSortOrderEnum

public enum ListVulnerabilitiesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListVulnerabilitiesSortOrderEnum {
    static var allValues: [ListVulnerabilitiesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListVulnerabilitiesSortOrderEnum? { ListVulnerabilitiesSortOrderEnum(rawValue: value) }
}