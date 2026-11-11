import Foundation
import OCICommon

// MARK: - MulticloudAlert

public struct MulticloudAlert: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var alertType: String?
    public var severity: MulticloudAlertSeverityEnum
    public var alertStatus: MulticloudAlertAlertStatusEnum
    public var timeCreated: Date?
    public var functionType: String?
    public var description: String?
    public var subscriptionId: String?
    public var subscriptionType: SubscriptionTypeEnum?
    public var timeUpdated: Date?
    public var resourceId: String?
    public var resourceType: String?
    public var compartmentId: String?
    public var source: String?
    public var alertId: String?
    public var lifecycleState: MulticloudAlertLifecycleStateEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var sourceRegion: String?
    public var additionalParameters: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, alertType, severity, alertStatus, timeCreated, functionType, description, subscriptionId, subscriptionType, timeUpdated, resourceId, resourceType, compartmentId, source, alertId, lifecycleState, freeformTags, definedTags, systemTags, sourceRegion, additionalParameters
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                alertType: String? = nil,
                severity: MulticloudAlertSeverityEnum,
                alertStatus: MulticloudAlertAlertStatusEnum,
                timeCreated: Date? = nil,
                functionType: String? = nil,
                description: String? = nil,
                subscriptionId: String? = nil,
                subscriptionType: SubscriptionTypeEnum? = nil,
                timeUpdated: Date? = nil,
                resourceId: String? = nil,
                resourceType: String? = nil,
                compartmentId: String? = nil,
                source: String? = nil,
                alertId: String? = nil,
                lifecycleState: MulticloudAlertLifecycleStateEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                sourceRegion: String? = nil,
                additionalParameters: [String: String]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.alertType = alertType
        self.severity = severity
        self.alertStatus = alertStatus
        self.timeCreated = timeCreated
        self.functionType = functionType
        self.description = description
        self.subscriptionId = subscriptionId
        self.subscriptionType = subscriptionType
        self.timeUpdated = timeUpdated
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.compartmentId = compartmentId
        self.source = source
        self.alertId = alertId
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.sourceRegion = sourceRegion
        self.additionalParameters = additionalParameters
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
