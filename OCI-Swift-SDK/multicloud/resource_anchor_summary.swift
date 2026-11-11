import Foundation
import OCICommon

// MARK: - ResourceAnchorSummary

public struct ResourceAnchorSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: ResourceAnchorLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var subscriptionId: String?
    public var compartmentName: String?
    public var partnerCloudAccountIdentifier: String?
    public var cspResourceAnchorId: String?
    public var cspResourceAnchorName: String?
    public var cspAdditionalProperties: [String: String]?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?
    public var linkedCompartmentId: String?
    public var linkedCompartmentName: String?
    public var resourceAnchorUri: String?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, timeCreated, lifecycleState, freeformTags, definedTags, subscriptionId, compartmentName, partnerCloudAccountIdentifier, cspResourceAnchorId, cspResourceAnchorName, cspAdditionalProperties, timeUpdated, lifecycleDetails, systemTags, linkedCompartmentId, linkedCompartmentName, resourceAnchorUri
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: ResourceAnchorLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                subscriptionId: String? = nil,
                compartmentName: String? = nil,
                partnerCloudAccountIdentifier: String? = nil,
                cspResourceAnchorId: String? = nil,
                cspResourceAnchorName: String? = nil,
                cspAdditionalProperties: [String: String]? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                linkedCompartmentId: String? = nil,
                linkedCompartmentName: String? = nil,
                resourceAnchorUri: String? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.subscriptionId = subscriptionId
        self.compartmentName = compartmentName
        self.partnerCloudAccountIdentifier = partnerCloudAccountIdentifier
        self.cspResourceAnchorId = cspResourceAnchorId
        self.cspResourceAnchorName = cspResourceAnchorName
        self.cspAdditionalProperties = cspAdditionalProperties
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
        self.linkedCompartmentId = linkedCompartmentId
        self.linkedCompartmentName = linkedCompartmentName
        self.resourceAnchorUri = resourceAnchorUri
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceAnchorSummary: CustomStringConvertible {
    public var description: String { "ResourceAnchorSummary()" }
}