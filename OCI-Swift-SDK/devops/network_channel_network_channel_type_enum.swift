import Foundation

// MARK: - NetworkChannelNetworkChannelTypeEnum

public enum NetworkChannelNetworkChannelTypeEnum: String, Codable, Sendable {
    case privateEndpointChannel = "PRIVATE_ENDPOINT_CHANNEL"
    case serviceVnicChannel = "SERVICE_VNIC_CHANNEL"
}

public extension NetworkChannelNetworkChannelTypeEnum {
    static var allValues: [NetworkChannelNetworkChannelTypeEnum] { [.privateEndpointChannel, .serviceVnicChannel] }
    static var allStringValues: [String] { ["PRIVATE_ENDPOINT_CHANNEL", "SERVICE_VNIC_CHANNEL"] }
    static func fromString(_ value: String) -> NetworkChannelNetworkChannelTypeEnum? { NetworkChannelNetworkChannelTypeEnum(rawValue: value) }
}