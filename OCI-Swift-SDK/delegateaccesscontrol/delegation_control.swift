import Foundation
import OCICommon

// MARK: - DelegationControl

public struct DelegationControl: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var resourceType: DelegationControlResourceTypeEnum
    public var description: String?
    public var numApprovalsRequired: Int?
    public var preApprovedServiceProviderActionNames: [String]?
    public var delegationSubscriptionIds: [String]?
    public var isAutoApproveDuringMaintenance: Bool?
    public var resourceIds: [String]?
    public var notificationTopicId: String?
    public var notificationMessageFormat: DelegationControlNotificationMessageFormatEnum?
    public var vaultId: String?
    public var vaultKeyId: String?
    public var lifecycleState: DelegationControlLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var timeDeleted: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, resourceType, description, numApprovalsRequired, preApprovedServiceProviderActionNames, delegationSubscriptionIds, isAutoApproveDuringMaintenance, resourceIds, notificationTopicId, notificationMessageFormat, vaultId, vaultKeyId, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, timeDeleted, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                resourceType: DelegationControlResourceTypeEnum,
                description: String? = nil,
                numApprovalsRequired: Int? = nil,
                preApprovedServiceProviderActionNames: [String]? = nil,
                delegationSubscriptionIds: [String]? = nil,
                isAutoApproveDuringMaintenance: Bool? = nil,
                resourceIds: [String]? = nil,
                notificationTopicId: String? = nil,
                notificationMessageFormat: DelegationControlNotificationMessageFormatEnum? = nil,
                vaultId: String? = nil,
                vaultKeyId: String? = nil,
                lifecycleState: DelegationControlLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                timeDeleted: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.resourceType = resourceType
        self.description = description
        self.numApprovalsRequired = numApprovalsRequired
        self.preApprovedServiceProviderActionNames = preApprovedServiceProviderActionNames
        self.delegationSubscriptionIds = delegationSubscriptionIds
        self.isAutoApproveDuringMaintenance = isAutoApproveDuringMaintenance
        self.resourceIds = resourceIds
        self.notificationTopicId = notificationTopicId
        self.notificationMessageFormat = notificationMessageFormat
        self.vaultId = vaultId
        self.vaultKeyId = vaultKeyId
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.timeDeleted = timeDeleted
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
