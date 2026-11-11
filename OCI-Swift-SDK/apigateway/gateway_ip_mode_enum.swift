import Foundation

// MARK: - GatewayIpModeEnum

public enum GatewayIpModeEnum: String, Codable, Sendable {
    case ipv4 = "IPV4"
    case ipv6 = "IPV6"
    case dualStack = "DUAL_STACK"
}

public extension GatewayIpModeEnum {
    static var allValues: [GatewayIpModeEnum] { [.ipv4, .ipv6, .dualStack] }
    static var allStringValues: [String] { ["IPV4", "IPV6", "DUAL_STACK"] }
    static func fromString(_ value: String) -> GatewayIpModeEnum? { GatewayIpModeEnum(rawValue: value) }
}