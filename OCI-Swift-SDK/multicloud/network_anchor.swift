import Foundation
import OCICommon

// MARK: - NetworkAnchor

public struct NetworkAnchor: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var resourceAnchorId: String?
    public var timeCreated: Date?
    public var networkAnchorLifecycleState: NetworkAnchorNetworkAnchorLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?
    public var setupMode: NetworkAnchorSetupModeEnum?
    public var clusterPlacementGroupId: String?
    public var ociMetadataItem: OciNetworkMetadata?
    public var cloudServiceProviderMetadataItem: CloudServiceProviderNetworkMetadataItem?
    public var subscriptionType: SubscriptionTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, resourceAnchorId, timeCreated, networkAnchorLifecycleState, freeformTags, definedTags, timeUpdated, lifecycleDetails, systemTags, setupMode, clusterPlacementGroupId, ociMetadataItem, cloudServiceProviderMetadataItem, subscriptionType
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                resourceAnchorId: String? = nil,
                timeCreated: Date? = nil,
                networkAnchorLifecycleState: NetworkAnchorNetworkAnchorLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                setupMode: NetworkAnchorSetupModeEnum? = nil,
                clusterPlacementGroupId: String? = nil,
                ociMetadataItem: OciNetworkMetadata? = nil,
                cloudServiceProviderMetadataItem: CloudServiceProviderNetworkMetadataItem? = nil,
                subscriptionType: SubscriptionTypeEnum? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.resourceAnchorId = resourceAnchorId
        self.timeCreated = timeCreated
        self.networkAnchorLifecycleState = networkAnchorLifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
        self.setupMode = setupMode
        self.clusterPlacementGroupId = clusterPlacementGroupId
        self.ociMetadataItem = ociMetadataItem
        self.cloudServiceProviderMetadataItem = cloudServiceProviderMetadataItem
        self.subscriptionType = subscriptionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NetworkAnchor: CustomStringConvertible {
    public var description: String { "NetworkAnchor()" }
}