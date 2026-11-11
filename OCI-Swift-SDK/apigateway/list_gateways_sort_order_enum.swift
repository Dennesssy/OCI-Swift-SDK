import Foundation

// MARK: - ListGatewaysSortOrderEnum

public enum ListGatewaysSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListGatewaysSortOrderEnum {
    static var allValues: [ListGatewaysSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListGatewaysSortOrderEnum? { ListGatewaysSortOrderEnum(rawValue: value) }
}