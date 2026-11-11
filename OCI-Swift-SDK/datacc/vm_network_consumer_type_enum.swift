import Foundation

// MARK: - VmNetworkConsumerTypeEnum

public enum VmNetworkConsumerTypeEnum: String, Codable, Sendable {
    case instance = "INSTANCE"
    case cluster = "CLUSTER"
}

public extension VmNetworkConsumerTypeEnum {
    static var allValues: [VmNetworkConsumerTypeEnum] { [.instance, .cluster] }
    static var allStringValues: [String] { ["INSTANCE", "CLUSTER"] }
    static func fromString(_ value: String) -> VmNetworkConsumerTypeEnum? { VmNetworkConsumerTypeEnum(rawValue: value) }
}