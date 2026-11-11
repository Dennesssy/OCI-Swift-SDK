import Foundation

// MARK: - ListAgentsSortOrderEnum

public enum ListAgentsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListAgentsSortOrderEnum {
    static var allValues: [ListAgentsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListAgentsSortOrderEnum? { ListAgentsSortOrderEnum(rawValue: value) }
}