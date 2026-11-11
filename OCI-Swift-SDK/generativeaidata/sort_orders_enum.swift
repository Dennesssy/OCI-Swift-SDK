import Foundation

// MARK: - SortOrdersEnum

public enum SortOrdersEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension SortOrdersEnum {
    static var allValues: [SortOrdersEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> SortOrdersEnum? { SortOrdersEnum(rawValue: value) }
}