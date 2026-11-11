import Foundation
import OCICommon

// MARK: - DelegatedResourceAccessRequestSummary

public struct DelegatedResourceAccessRequestSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var reasonForRequest: String?
    public var resourceId: String?
    public var delegationControlId: String?
    public var displayName: String?
    public var ticketNumbers: [String]?
    public var timeAccessRequested: Date?
    public var resourceName: String?
    public var resourceType: DelegationControlResourceTypeEnum?
    public var requestedActionNames: [String]?
    public var requesterType: DelegatedResourceAccessRequesterTypeEnum?
    public var severity: DelegatedResourceAccessRequestSeverityEnum?
    public var durationInHours: Int?
    public var extendDurationInHours: Int?
    public var isAutoApproved: Bool?
    public var lifecycleState: DelegatedResourceAccessRequestLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var requestStatus: DelegatedResourceAccessRequestStatusEnum?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, reasonForRequest, resourceId, delegationControlId, displayName, ticketNumbers, timeAccessRequested, resourceName, resourceType, requestedActionNames, requesterType, severity, durationInHours, extendDurationInHours, isAutoApproved, lifecycleState, lifecycleStateDetails, requestStatus, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                reasonForRequest: String? = nil,
                resourceId: String? = nil,
                delegationControlId: String? = nil,
                displayName: String? = nil,
                ticketNumbers: [String]? = nil,
                timeAccessRequested: Date? = nil,
                resourceName: String? = nil,
                resourceType: DelegationControlResourceTypeEnum? = nil,
                requestedActionNames: [String]? = nil,
                requesterType: DelegatedResourceAccessRequesterTypeEnum? = nil,
                severity: DelegatedResourceAccessRequestSeverityEnum? = nil,
                durationInHours: Int? = nil,
                extendDurationInHours: Int? = nil,
                isAutoApproved: Bool? = nil,
                lifecycleState: DelegatedResourceAccessRequestLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                requestStatus: DelegatedResourceAccessRequestStatusEnum? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.reasonForRequest = reasonForRequest
        self.resourceId = resourceId
        self.delegationControlId = delegationControlId
        self.displayName = displayName
        self.ticketNumbers = ticketNumbers
        self.timeAccessRequested = timeAccessRequested
        self.resourceName = resourceName
        self.resourceType = resourceType
        self.requestedActionNames = requestedActionNames
        self.requesterType = requesterType
        self.severity = severity
        self.durationInHours = durationInHours
        self.extendDurationInHours = extendDurationInHours
        self.isAutoApproved = isAutoApproved
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.requestStatus = requestStatus
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegatedResourceAccessRequestSummary: CustomStringConvertible {
    public var description: String { "DelegatedResourceAccessRequestSummary()" }
}