import Foundation
import OCICommon

// MARK: - CreateDelegationControlDetails

public struct CreateDelegationControlDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var delegationSubscriptionIds: [String]
    public var resourceIds: [String]
    public var resourceType: DelegationControlResourceTypeEnum
    public var notificationTopicId: String?
    public var notificationMessageFormat: DelegationControlNotificationMessageFormatEnum
    public var description: String?
    public var numApprovalsRequired: Int?
    public var preApprovedServiceProviderActionNames: [String]?
    public var isAutoApproveDuringMaintenance: Bool?
    public var vaultId: String?
    public var vaultKeyId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, delegationSubscriptionIds, resourceIds, resourceType, notificationTopicId, notificationMessageFormat, description, numApprovalsRequired, preApprovedServiceProviderActionNames, isAutoApproveDuringMaintenance, vaultId, vaultKeyId, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                delegationSubscriptionIds: [String],
                resourceIds: [String],
                resourceType: DelegationControlResourceTypeEnum,
                notificationTopicId: String? = nil,
                notificationMessageFormat: DelegationControlNotificationMessageFormatEnum,
                description: String? = nil,
                numApprovalsRequired: Int? = nil,
                preApprovedServiceProviderActionNames: [String]? = nil,
                isAutoApproveDuringMaintenance: Bool? = nil,
                vaultId: String? = nil,
                vaultKeyId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.delegationSubscriptionIds = delegationSubscriptionIds
        self.resourceIds = resourceIds
        self.resourceType = resourceType
        self.notificationTopicId = notificationTopicId
        self.notificationMessageFormat = notificationMessageFormat
        self.description = description
        self.numApprovalsRequired = numApprovalsRequired
        self.preApprovedServiceProviderActionNames = preApprovedServiceProviderActionNames
        self.isAutoApproveDuringMaintenance = isAutoApproveDuringMaintenance
        self.vaultId = vaultId
        self.vaultKeyId = vaultKeyId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
