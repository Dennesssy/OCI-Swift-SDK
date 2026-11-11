import Foundation

// MARK: - NetworkAnchorConnectionStatusEnum

public enum NetworkAnchorConnectionStatusEnum: String, Codable, Sendable {
    case connected = "CONNECTED"
    case disconnected = "DISCONNECTED"
    case connecting = "CONNECTING"
    case active = "ACTIVE"
    case error = "ERROR"
    case updating = "UPDATING"
    case needsAttention = "NEEDS_ATTENTION"
    case failed = "FAILED"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension NetworkAnchorConnectionStatusEnum {
    static var allValues: [NetworkAnchorConnectionStatusEnum] { [.connected, .disconnected, .connecting, .active, .error, .updating, .needsAttention, .failed, .deleting, .deleted] }
    static var allStringValues: [String] { ["CONNECTED", "DISCONNECTED", "CONNECTING", "ACTIVE", "ERROR", "UPDATING", "NEEDS_ATTENTION", "FAILED", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> NetworkAnchorConnectionStatusEnum? { NetworkAnchorConnectionStatusEnum(rawValue: value) }
}