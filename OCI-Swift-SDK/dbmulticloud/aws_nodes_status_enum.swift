import Foundation

// MARK: - AwsNodesStatusEnum

public enum AwsNodesStatusEnum: String, Codable, Sendable {
    case connected = "CONNECTED"
    case disconnected = "DISCONNECTED"
    case unknown = "UNKNOWN"
}

public extension AwsNodesStatusEnum {
    static var allValues: [AwsNodesStatusEnum] { [.connected, .disconnected, .unknown] }
    static var allStringValues: [String] { ["CONNECTED", "DISCONNECTED", "UNKNOWN"] }
    static func fromString(_ value: String) -> AwsNodesStatusEnum? { AwsNodesStatusEnum(rawValue: value) }
}