import Foundation

// MARK: - ListExternalLocationDetailsMetadataSortOrderEnum

public enum ListExternalLocationDetailsMetadataSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListExternalLocationDetailsMetadataSortOrderEnum {
    static var allValues: [ListExternalLocationDetailsMetadataSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListExternalLocationDetailsMetadataSortOrderEnum? { ListExternalLocationDetailsMetadataSortOrderEnum(rawValue: value) }
}