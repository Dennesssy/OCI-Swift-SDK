import Foundation

// MARK: - ListApiMetadataByEntityTypesSortOrderEnum

public enum ListApiMetadataByEntityTypesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListApiMetadataByEntityTypesSortOrderEnum {
    static var allValues: [ListApiMetadataByEntityTypesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListApiMetadataByEntityTypesSortOrderEnum? { ListApiMetadataByEntityTypesSortOrderEnum(rawValue: value) }
}