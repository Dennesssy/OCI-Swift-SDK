import Foundation

// MARK: - ListApiPlatformInstancesSortOrderEnum

public enum ListApiPlatformInstancesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListApiPlatformInstancesSortOrderEnum {
    static var allValues: [ListApiPlatformInstancesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListApiPlatformInstancesSortOrderEnum? { ListApiPlatformInstancesSortOrderEnum(rawValue: value) }
}