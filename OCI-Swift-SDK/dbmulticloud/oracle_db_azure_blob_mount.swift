import Foundation
import OCICommon

// MARK: - OracleDbAzureBlobMount

public struct OracleDbAzureBlobMount: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var oracleDbAzureConnectorId: String?
    public var oracleDbAzureBlobContainerId: String?
    public var mountPath: String?
    public var lifecycleState: OracleDbAzureBlobMountLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lastModification: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, oracleDbAzureConnectorId, oracleDbAzureBlobContainerId, mountPath, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, lastModification, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                oracleDbAzureConnectorId: String? = nil,
                oracleDbAzureBlobContainerId: String? = nil,
                mountPath: String? = nil,
                lifecycleState: OracleDbAzureBlobMountLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lastModification: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.oracleDbAzureBlobContainerId = oracleDbAzureBlobContainerId
        self.mountPath = mountPath
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

extension OracleDbAzureBlobMount: CustomStringConvertible {
    public var description: String { "OracleDbAzureBlobMount()" }
}