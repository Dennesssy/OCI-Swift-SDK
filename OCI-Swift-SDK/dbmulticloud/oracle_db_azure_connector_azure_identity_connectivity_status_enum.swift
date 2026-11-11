import Foundation

// MARK: - OracleDbAzureConnectorAzureIdentityConnectivityStatusEnum

public enum OracleDbAzureConnectorAzureIdentityConnectivityStatusEnum: String, Codable, Sendable {
    case connected = "CONNECTED"
    case disconnected = "DISCONNECTED"
    case partiallyConnected = "PARTIALLY_CONNECTED"
    case unknown = "UNKNOWN"
}

public extension OracleDbAzureConnectorAzureIdentityConnectivityStatusEnum {
    static var allValues: [OracleDbAzureConnectorAzureIdentityConnectivityStatusEnum] { [.connected, .disconnected, .partiallyConnected, .unknown] }
    static var allStringValues: [String] { ["CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"] }
    static func fromString(_ value: String) -> OracleDbAzureConnectorAzureIdentityConnectivityStatusEnum? { OracleDbAzureConnectorAzureIdentityConnectivityStatusEnum(rawValue: value) }
}