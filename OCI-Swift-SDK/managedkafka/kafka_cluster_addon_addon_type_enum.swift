import Foundation

// MARK: - KafkaClusterAddonAddonTypeEnum

public enum KafkaClusterAddonAddonTypeEnum: String, Codable, Sendable {
    case publicconnectivity = "PUBLICCONNECTIVITY"
}

public extension KafkaClusterAddonAddonTypeEnum {
    static var allValues: [KafkaClusterAddonAddonTypeEnum] { [.publicconnectivity] }
    static var allStringValues: [String] { ["PUBLICCONNECTIVITY"] }
    static func fromString(_ value: String) -> KafkaClusterAddonAddonTypeEnum? { KafkaClusterAddonAddonTypeEnum(rawValue: value) }
}