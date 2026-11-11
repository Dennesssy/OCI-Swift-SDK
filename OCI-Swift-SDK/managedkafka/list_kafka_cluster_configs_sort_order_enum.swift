import Foundation

// MARK: - ListKafkaClusterConfigsSortOrderEnum

public enum ListKafkaClusterConfigsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListKafkaClusterConfigsSortOrderEnum {
    static var allValues: [ListKafkaClusterConfigsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListKafkaClusterConfigsSortOrderEnum? { ListKafkaClusterConfigsSortOrderEnum(rawValue: value) }
}