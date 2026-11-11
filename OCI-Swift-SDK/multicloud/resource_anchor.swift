import Foundation
import OCICommon

// MARK: - ResourceAnchor

public struct ResourceAnchor: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: ResourceAnchorLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var subscriptionId: String?
    public var region: String?
    public var compartmentName: String?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var setupMode: ResourceAnchorSetupModeEnum?
    public var linkedCompartmentId: String?
    public var linkedCompartmentName: String?
    public var subscriptionType: SubscriptionTypeEnum?
    public var cloudServiceProviderMetadataItem: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, timeCreated, lifecycleState, freeformTags, definedTags, systemTags, subscriptionId, region, compartmentName, timeUpdated, lifecycleDetails, setupMode, linkedCompartmentId, linkedCompartmentName, subscriptionType, cloudServiceProviderMetadataItem
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: ResourceAnchorLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                subscriptionId: String? = nil,
                region: String? = nil,
                compartmentName: String? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                setupMode: ResourceAnchorSetupModeEnum? = nil,
                linkedCompartmentId: String? = nil,
                linkedCompartmentName: String? = nil,
                subscriptionType: SubscriptionTypeEnum? = nil,
                cloudServiceProviderMetadataItem: JSONValue? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.subscriptionId = subscriptionId
        self.region = region
        self.compartmentName = compartmentName
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.setupMode = setupMode
        self.linkedCompartmentId = linkedCompartmentId
        self.linkedCompartmentName = linkedCompartmentName
        self.subscriptionType = subscriptionType
        self.cloudServiceProviderMetadataItem = cloudServiceProviderMetadataItem
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceAnchor: CustomStringConvertible {
    public var description: String { "ResourceAnchor()" }
}