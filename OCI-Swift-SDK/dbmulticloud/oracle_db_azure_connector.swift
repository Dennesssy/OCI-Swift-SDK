import Foundation
import OCICommon

// MARK: - OracleDbAzureConnector

public struct OracleDbAzureConnector: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var dbClusterResourceId: String?
    public var azureTenantId: String?
    public var azureSubscriptionId: String?
    public var azureResourceGroup: String?
    public var displayName: String?
    public var arcAgentNodes: [ArcAgentNodes]?
    public var accessToken: String?
    public var privateEndpointIpAddress: String?
    public var privateEndpointDnsAlias: String?
    public var azureIdentityMechanism: OracleDbAzureConnectorAzureIdentityMechanismEnum?
    public var lifecycleState: OracleDbAzureConnectorLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var azureIdentityConnectivityStatus: OracleDbAzureConnectorAzureIdentityConnectivityStatusEnum?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lastModification: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, dbClusterResourceId, azureTenantId, azureSubscriptionId, azureResourceGroup, displayName, arcAgentNodes, accessToken, privateEndpointIpAddress, privateEndpointDnsAlias, azureIdentityMechanism, lifecycleState, lifecycleStateDetails, azureIdentityConnectivityStatus, timeCreated, timeUpdated, lastModification, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                dbClusterResourceId: String? = nil,
                azureTenantId: String? = nil,
                azureSubscriptionId: String? = nil,
                azureResourceGroup: String? = nil,
                displayName: String? = nil,
                arcAgentNodes: [ArcAgentNodes]? = nil,
                accessToken: String? = nil,
                privateEndpointIpAddress: String? = nil,
                privateEndpointDnsAlias: String? = nil,
                azureIdentityMechanism: OracleDbAzureConnectorAzureIdentityMechanismEnum? = nil,
                lifecycleState: OracleDbAzureConnectorLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                azureIdentityConnectivityStatus: OracleDbAzureConnectorAzureIdentityConnectivityStatusEnum? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lastModification: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.dbClusterResourceId = dbClusterResourceId
        self.azureTenantId = azureTenantId
        self.azureSubscriptionId = azureSubscriptionId
        self.azureResourceGroup = azureResourceGroup
        self.displayName = displayName
        self.arcAgentNodes = arcAgentNodes
        self.accessToken = accessToken
        self.privateEndpointIpAddress = privateEndpointIpAddress
        self.privateEndpointDnsAlias = privateEndpointDnsAlias
        self.azureIdentityMechanism = azureIdentityMechanism
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.azureIdentityConnectivityStatus = azureIdentityConnectivityStatus
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lastModification = lastModification
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAzureConnector: CustomStringConvertible {
    public var description: String { "OracleDbAzureConnector()" }
}