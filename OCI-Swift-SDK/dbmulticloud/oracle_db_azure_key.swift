import Foundation
import OCICommon

// MARK: - OracleDbAzureKey

public struct OracleDbAzureKey: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAzureVaultId: String?
    public var azureKeyId: String?
    public var lifecycleState: OracleDbAzureKeyLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var resourceType: String?
    public var keyProperties: JSONValue?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lastModification: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, oracleDbAzureVaultId, azureKeyId, lifecycleState, lifecycleStateDetails, resourceType, keyProperties, timeCreated, timeUpdated, lastModification, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureVaultId: String? = nil,
                azureKeyId: String? = nil,
                lifecycleState: OracleDbAzureKeyLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                resourceType: String? = nil,
                keyProperties: JSONValue? = nil,
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
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.azureKeyId = azureKeyId
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.resourceType = resourceType
        self.keyProperties = keyProperties
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

extension OracleDbAzureKey: CustomStringConvertible {
    public var description: String { "OracleDbAzureKey()" }
}