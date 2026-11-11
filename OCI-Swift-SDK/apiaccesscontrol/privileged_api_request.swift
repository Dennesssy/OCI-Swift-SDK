import Foundation
import OCICommon

// MARK: - PrivilegedApiRequest

public struct PrivilegedApiRequest: Codable, Sendable {

    public var id: String?
    public var reasonSummary: String?
    public var resourceId: String?
    public var state: PrivilegedApiRequestStateEnum
    public var displayName: String?
    public var requestId: String?
    public var notificationTopicId: String?
    public var requestedBy: [String]?
    public var resourceName: String?
    public var subResourceNameList: [String]?
    public var compartmentId: String?
    public var resourceType: String?
    public var entityType: String?
    public var privilegedOperationList: [PrivilegedApiRequestOperationDetails]?
    public var reasonDetail: String?
    public var severity: PrivilegedApiRequestSeverityEnum?
    public var durationInHrs: Int?
    public var ticketNumbers: [String]?
    public var stateDetails: String?
    public var lifecycleState: PrivilegedApiRequestLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var closureComment: String?
    public var privilegedApiControlId: String?
    public var privilegedApiControlName: String?
    public var numberOfApproversRequired: Int?
    public var approverDetails: [ApproverDetail]?
    public var timeRequestedForFutureAccess: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, reasonSummary, resourceId, state, displayName, requestId, notificationTopicId, requestedBy, resourceName, subResourceNameList, compartmentId, resourceType, entityType, privilegedOperationList, reasonDetail, severity, durationInHrs, ticketNumbers, stateDetails, lifecycleState, lifecycleDetails, timeCreated, timeUpdated, closureComment, privilegedApiControlId, privilegedApiControlName, numberOfApproversRequired, approverDetails, timeRequestedForFutureAccess, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                reasonSummary: String? = nil,
                resourceId: String? = nil,
                state: PrivilegedApiRequestStateEnum,
                displayName: String? = nil,
                requestId: String? = nil,
                notificationTopicId: String? = nil,
                requestedBy: [String]? = nil,
                resourceName: String? = nil,
                subResourceNameList: [String]? = nil,
                compartmentId: String? = nil,
                resourceType: String? = nil,
                entityType: String? = nil,
                privilegedOperationList: [PrivilegedApiRequestOperationDetails]? = nil,
                reasonDetail: String? = nil,
                severity: PrivilegedApiRequestSeverityEnum? = nil,
                durationInHrs: Int? = nil,
                ticketNumbers: [String]? = nil,
                stateDetails: String? = nil,
                lifecycleState: PrivilegedApiRequestLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                closureComment: String? = nil,
                privilegedApiControlId: String? = nil,
                privilegedApiControlName: String? = nil,
                numberOfApproversRequired: Int? = nil,
                approverDetails: [ApproverDetail]? = nil,
                timeRequestedForFutureAccess: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.reasonSummary = reasonSummary
        self.resourceId = resourceId
        self.state = state
        self.displayName = displayName
        self.requestId = requestId
        self.notificationTopicId = notificationTopicId
        self.requestedBy = requestedBy
        self.resourceName = resourceName
        self.subResourceNameList = subResourceNameList
        self.compartmentId = compartmentId
        self.resourceType = resourceType
        self.entityType = entityType
        self.privilegedOperationList = privilegedOperationList
        self.reasonDetail = reasonDetail
        self.severity = severity
        self.durationInHrs = durationInHrs
        self.ticketNumbers = ticketNumbers
        self.stateDetails = stateDetails
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.closureComment = closureComment
        self.privilegedApiControlId = privilegedApiControlId
        self.privilegedApiControlName = privilegedApiControlName
        self.numberOfApproversRequired = numberOfApproversRequired
        self.approverDetails = approverDetails
        self.timeRequestedForFutureAccess = timeRequestedForFutureAccess
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrivilegedApiRequest: CustomStringConvertible {
    public var description: String { "PrivilegedApiRequest()" }
}