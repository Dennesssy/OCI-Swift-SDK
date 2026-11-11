import Foundation

// MARK: - ListAiDataPlatformsSortOrderEnum

public enum ListAiDataPlatformsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListAiDataPlatformsSortOrderEnum {
    static var allValues: [ListAiDataPlatformsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListAiDataPlatformsSortOrderEnum? { ListAiDataPlatformsSortOrderEnum(rawValue: value) }
}