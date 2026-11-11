import Foundation
import OCICommon

// MARK: - OracleDbAzureBlobContainer

public struct OracleDbAzureBlobContainer: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var azureStorageAccountName: String?
    public var azureStorageContainerName: String?
    public var privateEndpointIpAddress: String?
    public var privateEndpointDnsAlias: String?
    public var lifecycleState: OracleDbAzureBlobContainerLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lastModification: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, azureStorageAccountName, azureStorageContainerName, privateEndpointIpAddress, privateEndpointDnsAlias, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, lastModification, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                azureStorageAccountName: String? = nil,
                azureStorageContainerName: String? = nil,
                privateEndpointIpAddress: String? = nil,
                privateEndpointDnsAlias: String? = nil,
                lifecycleState: OracleDbAzureBlobContainerLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lastModification: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.azureStorageAccountName = azureStorageAccountName
        self.azureStorageContainerName = azureStorageContainerName
        self.privateEndpointIpAddress = privateEndpointIpAddress
        self.privateEndpointDnsAlias = privateEndpointDnsAlias
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
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

extension OracleDbAzureBlobContainer: CustomStringConvertible {
    public var description: String { "OracleDbAzureBlobContainer()" }
}