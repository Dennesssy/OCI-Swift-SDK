import Foundation

// MARK: - ListKafkaClusterConfigVersionsSortByEnum

public enum ListKafkaClusterConfigVersionsSortByEnum: String, Codable, Sendable {
    case versionnumber = "versionNumber"
}

public extension ListKafkaClusterConfigVersionsSortByEnum {
    static var allValues: [ListKafkaClusterConfigVersionsSortByEnum] { [.versionnumber] }
    static var allStringValues: [String] { ["versionNumber"] }
    static func fromString(_ value: String) -> ListKafkaClusterConfigVersionsSortByEnum? { ListKafkaClusterConfigVersionsSortByEnum(rawValue: value) }
}