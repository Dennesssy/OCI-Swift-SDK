import Foundation

// MARK: - ListScriptsSortOrderEnum

public enum ListScriptsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListScriptsSortOrderEnum {
    static var allValues: [ListScriptsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListScriptsSortOrderEnum? { ListScriptsSortOrderEnum(rawValue: value) }
}