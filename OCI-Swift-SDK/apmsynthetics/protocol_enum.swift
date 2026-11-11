import Foundation

// MARK: - ProtocolEnum

public enum ProtocolEnum: String, Codable, Sendable {
    case icmp = "ICMP"
    case tcp = "TCP"
}

public extension ProtocolEnum {
    static var allValues: [ProtocolEnum] { [.icmp, .tcp] }
    static var allStringValues: [String] { ["ICMP", "TCP"] }
    static func fromString(_ value: String) -> ProtocolEnum? { ProtocolEnum(rawValue: value) }
}