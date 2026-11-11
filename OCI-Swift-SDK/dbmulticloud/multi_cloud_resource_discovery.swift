import Foundation
import OCICommon

// MARK: - MultiCloudResourceDiscovery

public struct MultiCloudResourceDiscovery: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbConnectorId: String?
    public var resourceType: MultiCloudResourceDiscoveryResourceTypeEnum
    public var resourcesFilter: [String: String]?
    public var resources: [Resources]?
    public var lifecycleState: MultiCloudResourceDiscoveryLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lastModification: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, oracleDbConnectorId, resourceType, resourcesFilter, resources, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, lastModification, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbConnectorId: String? = nil,
                resourceType: MultiCloudResourceDiscoveryResourceTypeEnum,
                resourcesFilter: [String: String]? = nil,
                resources: [Resources]? = nil,
                lifecycleState: MultiCloudResourceDiscoveryLifecycleStateEnum? = nil,
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
        self.oracleDbConnectorId = oracleDbConnectorId
        self.resourceType = resourceType
        self.resourcesFilter = resourcesFilter
        self.resources = resources
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

extension MultiCloudResourceDiscovery: CustomStringConvertible {
    public var description: String { "MultiCloudResourceDiscovery()" }
}