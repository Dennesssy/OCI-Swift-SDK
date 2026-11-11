import Foundation

// MARK: - ListExternalLocationMappingMetadataSortOrderEnum

public enum ListExternalLocationMappingMetadataSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListExternalLocationMappingMetadataSortOrderEnum {
    static var allValues: [ListExternalLocationMappingMetadataSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListExternalLocationMappingMetadataSortOrderEnum? { ListExternalLocationMappingMetadataSortOrderEnum(rawValue: value) }
}