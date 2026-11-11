import Foundation

// MARK: - ListKafkaClustersSortOrderEnum

public enum ListKafkaClustersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListKafkaClustersSortOrderEnum {
    static var allValues: [ListKafkaClustersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListKafkaClustersSortOrderEnum? { ListKafkaClustersSortOrderEnum(rawValue: value) }
}