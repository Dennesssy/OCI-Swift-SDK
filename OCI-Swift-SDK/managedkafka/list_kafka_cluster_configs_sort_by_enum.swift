import Foundation

// MARK: - ListKafkaClusterConfigsSortByEnum

public enum ListKafkaClusterConfigsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListKafkaClusterConfigsSortByEnum {
    static var allValues: [ListKafkaClusterConfigsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListKafkaClusterConfigsSortByEnum? { ListKafkaClusterConfigsSortByEnum(rawValue: value) }
}