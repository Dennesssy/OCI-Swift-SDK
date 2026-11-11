import Foundation
import OCICommon

// MARK: - OracleDbAzureVaultAssociation

public struct OracleDbAzureVaultAssociation: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAzureConnectorId: String?
    public var oracleDbAzureVaultId: String?
    public var isResourceAccessible: Bool?
    public var lifecycleState: OracleDbAzureVaultAssociationLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lastModification: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, oracleDbAzureConnectorId, oracleDbAzureVaultId, isResourceAccessible, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, lastModification, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureConnectorId: String? = nil,
                oracleDbAzureVaultId: String? = nil,
                isResourceAccessible: Bool? = nil,
                lifecycleState: OracleDbAzureVaultAssociationLifecycleStateEnum? = nil,
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
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.isResourceAccessible = isResourceAccessible
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

extension OracleDbAzureVaultAssociation: CustomStringConvertible {
    public var description: String { "OracleDbAzureVaultAssociation()" }
}