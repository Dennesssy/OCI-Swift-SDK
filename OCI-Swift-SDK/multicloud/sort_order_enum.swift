import Foundation

// MARK: - SortOrderEnum

public enum SortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension SortOrderEnum {
    static var allValues: [SortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> SortOrderEnum? { SortOrderEnum(rawValue: value) }
}