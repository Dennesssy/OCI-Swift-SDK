import Foundation

// MARK: - ListObjectStorageLinksSortOrderEnum

public enum ListObjectStorageLinksSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListObjectStorageLinksSortOrderEnum {
    static var allValues: [ListObjectStorageLinksSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListObjectStorageLinksSortOrderEnum? { ListObjectStorageLinksSortOrderEnum(rawValue: value) }
}