import Foundation

// MARK: - GcpNodesStatusEnum

public enum GcpNodesStatusEnum: String, Codable, Sendable {
    case connected = "CONNECTED"
    case disconnected = "DISCONNECTED"
    case unknown = "UNKNOWN"
}

public extension GcpNodesStatusEnum {
    static var allValues: [GcpNodesStatusEnum] { [.connected, .disconnected, .unknown] }
    static var allStringValues: [String] { ["CONNECTED", "DISCONNECTED", "UNKNOWN"] }
    static func fromString(_ value: String) -> GcpNodesStatusEnum? { GcpNodesStatusEnum(rawValue: value) }
}