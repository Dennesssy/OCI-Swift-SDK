import Foundation

// MARK: - OracleDbAzureConnectorAzureIdentityMechanismEnum

public enum OracleDbAzureConnectorAzureIdentityMechanismEnum: String, Codable, Sendable {
    case arcAgent = "ARC_AGENT"
    case servicePrincipal = "SERVICE_PRINCIPAL"
}

public extension OracleDbAzureConnectorAzureIdentityMechanismEnum {
    static var allValues: [OracleDbAzureConnectorAzureIdentityMechanismEnum] { [.arcAgent, .servicePrincipal] }
    static var allStringValues: [String] { ["ARC_AGENT", "SERVICE_PRINCIPAL"] }
    static func fromString(_ value: String) -> OracleDbAzureConnectorAzureIdentityMechanismEnum? { OracleDbAzureConnectorAzureIdentityMechanismEnum(rawValue: value) }
}