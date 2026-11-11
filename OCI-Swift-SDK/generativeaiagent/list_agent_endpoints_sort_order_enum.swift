import Foundation

// MARK: - ListAgentEndpointsSortOrderEnum

public enum ListAgentEndpointsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListAgentEndpointsSortOrderEnum {
    static var allValues: [ListAgentEndpointsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListAgentEndpointsSortOrderEnum? { ListAgentEndpointsSortOrderEnum(rawValue: value) }
}