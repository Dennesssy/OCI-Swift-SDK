import Foundation
import OCICommon

// MARK: - MulticloudSubscriptionSummary

public struct MulticloudSubscriptionSummary: Codable, Sendable {

    public var classicSubscriptionId: String?
    public var partnerCloudAccountIdentifier: String?
    public var timeCreated: Date?
    public var subscriptionId: String?
    public var partnerCloudTenantIdentifier: String?
    public var serviceName: SubscriptionTypeEnum?
    public var timeLinkedDate: Date?
    public var paymentPlan: String?
    public var activeCommitment: String?
    public var timeEndDate: Date?
    public var lifecycleState: MulticloudSubscriptionSummaryLifecycleStateEnum?
    public var cspAdditionalProperties: [String: String]?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case classicSubscriptionId, partnerCloudAccountIdentifier, timeCreated, subscriptionId, partnerCloudTenantIdentifier, serviceName, timeLinkedDate, paymentPlan, activeCommitment, timeEndDate, lifecycleState, cspAdditionalProperties, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                classicSubscriptionId: String? = nil,
                partnerCloudAccountIdentifier: String? = nil,
                timeCreated: Date? = nil,
                subscriptionId: String? = nil,
                partnerCloudTenantIdentifier: String? = nil,
                serviceName: SubscriptionTypeEnum? = nil,
                timeLinkedDate: Date? = nil,
                paymentPlan: String? = nil,
                activeCommitment: String? = nil,
                timeEndDate: Date? = nil,
                lifecycleState: MulticloudSubscriptionSummaryLifecycleStateEnum? = nil,
                cspAdditionalProperties: [String: String]? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.classicSubscriptionId = classicSubscriptionId
        self.partnerCloudAccountIdentifier = partnerCloudAccountIdentifier
        self.timeCreated = timeCreated
        self.subscriptionId = subscriptionId
        self.partnerCloudTenantIdentifier = partnerCloudTenantIdentifier
        self.serviceName = serviceName
        self.timeLinkedDate = timeLinkedDate
        self.paymentPlan = paymentPlan
        self.activeCommitment = activeCommitment
        self.timeEndDate = timeEndDate
        self.lifecycleState = lifecycleState
        self.cspAdditionalProperties = cspAdditionalProperties
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MulticloudSubscriptionSummary: CustomStringConvertible {
    public var description: String { "MulticloudSubscriptionSummary()" }
}