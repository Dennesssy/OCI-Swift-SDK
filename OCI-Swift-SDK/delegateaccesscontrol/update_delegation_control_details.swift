import Foundation
import OCICommon

// MARK: - UpdateDelegationControlDetails

public struct UpdateDelegationControlDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var numApprovalsRequired: Int?
    public var delegationSubscriptionIds: [String]?
    public var isAutoApproveDuringMaintenance: Bool?
    public var resourceIds: [String]?
    public var preApprovedServiceProviderActionNames: [String]?
    public var notificationTopicId: String?
    public var notificationMessageFormat: DelegationControlNotificationMessageFormatEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, numApprovalsRequired, delegationSubscriptionIds, isAutoApproveDuringMaintenance, resourceIds, preApprovedServiceProviderActionNames, notificationTopicId, notificationMessageFormat, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                numApprovalsRequired: Int? = nil,
                delegationSubscriptionIds: [String]? = nil,
                isAutoApproveDuringMaintenance: Bool? = nil,
                resourceIds: [String]? = nil,
                preApprovedServiceProviderActionNames: [String]? = nil,
                notificationTopicId: String? = nil,
                notificationMessageFormat: DelegationControlNotificationMessageFormatEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.numApprovalsRequired = numApprovalsRequired
        self.delegationSubscriptionIds = delegationSubscriptionIds
        self.isAutoApproveDuringMaintenance = isAutoApproveDuringMaintenance
        self.resourceIds = resourceIds
        self.preApprovedServiceProviderActionNames = preApprovedServiceProviderActionNames
        self.notificationTopicId = notificationTopicId
        self.notificationMessageFormat = notificationMessageFormat
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
