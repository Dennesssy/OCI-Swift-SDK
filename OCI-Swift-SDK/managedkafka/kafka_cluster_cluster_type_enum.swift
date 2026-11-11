import Foundation

// MARK: - KafkaClusterClusterTypeEnum

public enum KafkaClusterClusterTypeEnum: String, Codable, Sendable {
    case development = "DEVELOPMENT"
    case production = "PRODUCTION"
}

public extension KafkaClusterClusterTypeEnum {
    static var allValues: [KafkaClusterClusterTypeEnum] { [.development, .production] }
    static var allStringValues: [String] { ["DEVELOPMENT", "PRODUCTION"] }
    static func fromString(_ value: String) -> KafkaClusterClusterTypeEnum? { KafkaClusterClusterTypeEnum(rawValue: value) }
}