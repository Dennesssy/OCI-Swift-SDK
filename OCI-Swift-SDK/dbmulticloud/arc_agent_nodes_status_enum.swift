import Foundation

// MARK: - ArcAgentNodesStatusEnum

public enum ArcAgentNodesStatusEnum: String, Codable, Sendable {
    case connected = "CONNECTED"
    case disconnected = "DISCONNECTED"
    case unknown = "UNKNOWN"
}

public extension ArcAgentNodesStatusEnum {
    static var allValues: [ArcAgentNodesStatusEnum] { [.connected, .disconnected, .unknown] }
    static var allStringValues: [String] { ["CONNECTED", "DISCONNECTED", "UNKNOWN"] }
    static func fromString(_ value: String) -> ArcAgentNodesStatusEnum? { ArcAgentNodesStatusEnum(rawValue: value) }
}