import Foundation

// MARK: - ServiceRoleDetailsAssumeRoleStatusEnum

public enum ServiceRoleDetailsAssumeRoleStatusEnum: String, Codable, Sendable {
    case connected = "CONNECTED"
    case disconnected = "DISCONNECTED"
    case partiallyConnected = "PARTIALLY_CONNECTED"
    case unknown = "UNKNOWN"
}

public extension ServiceRoleDetailsAssumeRoleStatusEnum {
    static var allValues: [ServiceRoleDetailsAssumeRoleStatusEnum] { [.connected, .disconnected, .partiallyConnected, .unknown] }
    static var allStringValues: [String] { ["CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"] }
    static func fromString(_ value: String) -> ServiceRoleDetailsAssumeRoleStatusEnum? { ServiceRoleDetailsAssumeRoleStatusEnum(rawValue: value) }
}