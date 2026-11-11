import Foundation

// MARK: - ListVmClusterNetworksVmNetworkConsumerTypeEnum

public enum ListVmClusterNetworksVmNetworkConsumerTypeEnum: String, Codable, Sendable {
    case instance = "INSTANCE"
    case cluster = "CLUSTER"
}

public extension ListVmClusterNetworksVmNetworkConsumerTypeEnum {
    static var allValues: [ListVmClusterNetworksVmNetworkConsumerTypeEnum] { [.instance, .cluster] }
    static var allStringValues: [String] { ["INSTANCE", "CLUSTER"] }
    static func fromString(_ value: String) -> ListVmClusterNetworksVmNetworkConsumerTypeEnum? { ListVmClusterNetworksVmNetworkConsumerTypeEnum(rawValue: value) }
}