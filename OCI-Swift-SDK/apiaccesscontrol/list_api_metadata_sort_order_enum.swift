import Foundation

// MARK: - ListApiMetadataSortOrderEnum

public enum ListApiMetadataSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListApiMetadataSortOrderEnum {
    static var allValues: [ListApiMetadataSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListApiMetadataSortOrderEnum? { ListApiMetadataSortOrderEnum(rawValue: value) }
}