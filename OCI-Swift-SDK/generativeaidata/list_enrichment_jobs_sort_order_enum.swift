import Foundation

// MARK: - ListEnrichmentJobsSortOrderEnum

public enum ListEnrichmentJobsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListEnrichmentJobsSortOrderEnum {
    static var allValues: [ListEnrichmentJobsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListEnrichmentJobsSortOrderEnum? { ListEnrichmentJobsSortOrderEnum(rawValue: value) }
}