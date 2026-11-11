import Foundation
import OCICommon

// MARK: - NetworkAnchorSummary

public struct NetworkAnchorSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var resourceAnchorId: String?
    public var networkAnchorConnectionStatus: NetworkAnchorConnectionStatusEnum
    public var timeCreated: Date?
    public var networkAnchorLifecycleState: NetworkAnchorNetworkAnchorLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var vcnId: String?
    public var vcnName: String?
    public var clusterPlacementGroupId: String?
    public var timeUpdated: Date?
    public var cspAdditionalProperties: [String: String]?
    public var cspNetworkAnchorId: String?
    public var networkAnchorUri: String?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?
    public var subscriptionType: SubscriptionTypeEnum?
    public var cidrBlocks: [String]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, resourceAnchorId, networkAnchorConnectionStatus, timeCreated, networkAnchorLifecycleState, freeformTags, definedTags, vcnId, vcnName, clusterPlacementGroupId, timeUpdated, cspAdditionalProperties, cspNetworkAnchorId, networkAnchorUri, lifecycleDetails, systemTags, subscriptionType, cidrBlocks
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                resourceAnchorId: String? = nil,
                networkAnchorConnectionStatus: NetworkAnchorConnectionStatusEnum,
                timeCreated: Date? = nil,
                networkAnchorLifecycleState: NetworkAnchorNetworkAnchorLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                vcnId: String? = nil,
                vcnName: String? = nil,
                clusterPlacementGroupId: String? = nil,
                timeUpdated: Date? = nil,
                cspAdditionalProperties: [String: String]? = nil,
                cspNetworkAnchorId: String? = nil,
                networkAnchorUri: String? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                subscriptionType: SubscriptionTypeEnum? = nil,
                cidrBlocks: [String]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.resourceAnchorId = resourceAnchorId
        self.networkAnchorConnectionStatus = networkAnchorConnectionStatus
        self.timeCreated = timeCreated
        self.networkAnchorLifecycleState = networkAnchorLifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.vcnId = vcnId
        self.vcnName = vcnName
        self.clusterPlacementGroupId = clusterPlacementGroupId
        self.timeUpdated = timeUpdated
        self.cspAdditionalProperties = cspAdditionalProperties
        self.cspNetworkAnchorId = cspNetworkAnchorId
        self.networkAnchorUri = networkAnchorUri
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
        self.subscriptionType = subscriptionType
        self.cidrBlocks = cidrBlocks
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NetworkAnchorSummary: CustomStringConvertible {
    public var description: String { "NetworkAnchorSummary()" }
}