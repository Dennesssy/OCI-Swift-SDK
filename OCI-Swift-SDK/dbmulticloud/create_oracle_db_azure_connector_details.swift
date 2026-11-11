import Foundation
import OCICommon

// MARK: - CreateOracleDbAzureConnectorDetails

public struct CreateOracleDbAzureConnectorDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var dbClusterResourceId: String?
    public var azureIdentityMechanism: OracleDbAzureConnectorAzureIdentityMechanismEnum
    public var azureTenantId: String?
    public var azureSubscriptionId: String?
    public var azureResourceGroup: String?
    public var accessToken: String?
    public var privateEndpointIpAddress: String?
    public var privateEndpointDnsAlias: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, dbClusterResourceId, azureIdentityMechanism, azureTenantId, azureSubscriptionId, azureResourceGroup, accessToken, privateEndpointIpAddress, privateEndpointDnsAlias, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                dbClusterResourceId: String? = nil,
                azureIdentityMechanism: OracleDbAzureConnectorAzureIdentityMechanismEnum,
                azureTenantId: String? = nil,
                azureSubscriptionId: String? = nil,
                azureResourceGroup: String? = nil,
                accessToken: String? = nil,
                privateEndpointIpAddress: String? = nil,
                privateEndpointDnsAlias: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.dbClusterResourceId = dbClusterResourceId
        self.azureIdentityMechanism = azureIdentityMechanism
        self.azureTenantId = azureTenantId
        self.azureSubscriptionId = azureSubscriptionId
        self.azureResourceGroup = azureResourceGroup
        self.accessToken = accessToken
        self.privateEndpointIpAddress = privateEndpointIpAddress
        self.privateEndpointDnsAlias = privateEndpointDnsAlias
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureConnectorDetails: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureConnectorDetails()" }
}