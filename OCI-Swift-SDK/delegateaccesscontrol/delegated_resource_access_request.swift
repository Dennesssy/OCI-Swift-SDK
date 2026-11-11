import Foundation
import OCICommon

// MARK: - DelegatedResourceAccessRequest

public struct DelegatedResourceAccessRequest: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var reasonForRequest: String?
    public var description: String?
    public var resourceId: String?
    public var displayName: String?
    public var ticketNumbers: [String]?
    public var timeAccessRequested: Date?
    public var resourceName: String?
    public var resourceType: DelegationControlResourceTypeEnum?
    public var requesterType: DelegatedResourceAccessRequesterTypeEnum?
    public var requestedActionNames: [String]?
    public var databaseNameList: [String]?
    public var databaseIdList: [String]?
    public var providedServiceTypes: [ServiceProviderServiceTypeEnum]?
    public var delegationSubscriptionIds: [String]?
    public var severity: DelegatedResourceAccessRequestSeverityEnum?
    public var durationInHours: Int?
    public var extendDurationInHours: Int?
    public var isAutoApproved: Bool?
    public var lifecycleState: DelegatedResourceAccessRequestLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var requestStatus: DelegatedResourceAccessRequestStatusEnum?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var numInitialApprovals: Int?
    public var numExtensionApprovals: Int?
    public var approvalInfo: [DelegatedResourceAccessRequestApprovalDetails]?
    public var closureComment: String?
    public var delegationControlId: String?
    public var auditTypes: [DelegatedResourceAccessRequestAuditTypeEnum]?
    public var isPendingMoreInfo: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, reasonForRequest, description, resourceId, displayName, ticketNumbers, timeAccessRequested, resourceName, resourceType, requesterType, requestedActionNames, databaseNameList, databaseIdList, providedServiceTypes, delegationSubscriptionIds, severity, durationInHours, extendDurationInHours, isAutoApproved, lifecycleState, lifecycleStateDetails, requestStatus, timeCreated, timeUpdated, numInitialApprovals, numExtensionApprovals, approvalInfo, closureComment, delegationControlId, auditTypes, isPendingMoreInfo, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                reasonForRequest: String? = nil,
                description: String? = nil,
                resourceId: String? = nil,
                displayName: String? = nil,
                ticketNumbers: [String]? = nil,
                timeAccessRequested: Date? = nil,
                resourceName: String? = nil,
                resourceType: DelegationControlResourceTypeEnum? = nil,
                requesterType: DelegatedResourceAccessRequesterTypeEnum? = nil,
                requestedActionNames: [String]? = nil,
                databaseNameList: [String]? = nil,
                databaseIdList: [String]? = nil,
                providedServiceTypes: [ServiceProviderServiceTypeEnum]? = nil,
                delegationSubscriptionIds: [String]? = nil,
                severity: DelegatedResourceAccessRequestSeverityEnum? = nil,
                durationInHours: Int? = nil,
                extendDurationInHours: Int? = nil,
                isAutoApproved: Bool? = nil,
                lifecycleState: DelegatedResourceAccessRequestLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                requestStatus: DelegatedResourceAccessRequestStatusEnum? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                numInitialApprovals: Int? = nil,
                numExtensionApprovals: Int? = nil,
                approvalInfo: [DelegatedResourceAccessRequestApprovalDetails]? = nil,
                closureComment: String? = nil,
                delegationControlId: String? = nil,
                auditTypes: [DelegatedResourceAccessRequestAuditTypeEnum]? = nil,
                isPendingMoreInfo: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.reasonForRequest = reasonForRequest
        self.description = description
        self.resourceId = resourceId
        self.displayName = displayName
        self.ticketNumbers = ticketNumbers
        self.timeAccessRequested = timeAccessRequested
        self.resourceName = resourceName
        self.resourceType = resourceType
        self.requesterType = requesterType
        self.requestedActionNames = requestedActionNames
        self.databaseNameList = databaseNameList
        self.databaseIdList = databaseIdList
        self.providedServiceTypes = providedServiceTypes
        self.delegationSubscriptionIds = delegationSubscriptionIds
        self.severity = severity
        self.durationInHours = durationInHours
        self.extendDurationInHours = extendDurationInHours
        self.isAutoApproved = isAutoApproved
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.requestStatus = requestStatus
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.numInitialApprovals = numInitialApprovals
        self.numExtensionApprovals = numExtensionApprovals
        self.approvalInfo = approvalInfo
        self.closureComment = closureComment
        self.delegationControlId = delegationControlId
        self.auditTypes = auditTypes
        self.isPendingMoreInfo = isPendingMoreInfo
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
