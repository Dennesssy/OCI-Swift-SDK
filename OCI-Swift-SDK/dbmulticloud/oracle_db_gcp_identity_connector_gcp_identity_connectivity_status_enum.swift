import Foundation

// MARK: - OracleDbGcpIdentityConnectorGcpIdentityConnectivityStatusEnum

public enum OracleDbGcpIdentityConnectorGcpIdentityConnectivityStatusEnum: String, Codable, Sendable {
    case connected = "CONNECTED"
    case disconnected = "DISCONNECTED"
    case partiallyConnected = "PARTIALLY_CONNECTED"
    case unknown = "UNKNOWN"
}

public extension OracleDbGcpIdentityConnectorGcpIdentityConnectivityStatusEnum {
    static var allValues: [OracleDbGcpIdentityConnectorGcpIdentityConnectivityStatusEnum] { [.connected, .disconnected, .partiallyConnected, .unknown] }
    static var allStringValues: [String] { ["CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"] }
    static func fromString(_ value: String) -> OracleDbGcpIdentityConnectorGcpIdentityConnectivityStatusEnum? { OracleDbGcpIdentityConnectorGcpIdentityConnectivityStatusEnum(rawValue: value) }
}