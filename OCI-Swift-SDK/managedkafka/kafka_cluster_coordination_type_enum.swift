import Foundation

// MARK: - KafkaClusterCoordinationTypeEnum

public enum KafkaClusterCoordinationTypeEnum: String, Codable, Sendable {
    case zookeeper = "ZOOKEEPER"
    case kraft = "KRAFT"
}

public extension KafkaClusterCoordinationTypeEnum {
    static var allValues: [KafkaClusterCoordinationTypeEnum] { [.zookeeper, .kraft] }
    static var allStringValues: [String] { ["ZOOKEEPER", "KRAFT"] }
    static func fromString(_ value: String) -> KafkaClusterCoordinationTypeEnum? { KafkaClusterCoordinationTypeEnum(rawValue: value) }
}