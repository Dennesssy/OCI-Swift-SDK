import Foundation

// MARK: - DnsTransportProtocolEnum

public enum DnsTransportProtocolEnum: String, Codable, Sendable {
    case tcp = "TCP"
    case udp = "UDP"
}

public extension DnsTransportProtocolEnum {
    static var allValues: [DnsTransportProtocolEnum] { [.tcp, .udp] }
    static var allStringValues: [String] { ["TCP", "UDP"] }
    static func fromString(_ value: String) -> DnsTransportProtocolEnum? { DnsTransportProtocolEnum(rawValue: value) }
}