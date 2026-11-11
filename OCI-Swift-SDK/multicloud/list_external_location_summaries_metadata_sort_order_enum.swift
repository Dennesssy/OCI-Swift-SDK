import Foundation

// MARK: - ListExternalLocationSummariesMetadataSortOrderEnum

public enum ListExternalLocationSummariesMetadataSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListExternalLocationSummariesMetadataSortOrderEnum {
    static var allValues: [ListExternalLocationSummariesMetadataSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListExternalLocationSummariesMetadataSortOrderEnum? { ListExternalLocationSummariesMetadataSortOrderEnum(rawValue: value) }
}