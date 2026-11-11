import Foundation

// MARK: - ListKafkaClustersSortByEnum

public enum ListKafkaClustersSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListKafkaClustersSortByEnum {
    static var allValues: [ListKafkaClustersSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListKafkaClustersSortByEnum? { ListKafkaClustersSortByEnum(rawValue: value) }
}