import Foundation

// MARK: - ListKafkaClusterConfigVersionsSortOrderEnum

public enum ListKafkaClusterConfigVersionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListKafkaClusterConfigVersionsSortOrderEnum {
    static var allValues: [ListKafkaClusterConfigVersionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListKafkaClusterConfigVersionsSortOrderEnum? { ListKafkaClusterConfigVersionsSortOrderEnum(rawValue: value) }
}