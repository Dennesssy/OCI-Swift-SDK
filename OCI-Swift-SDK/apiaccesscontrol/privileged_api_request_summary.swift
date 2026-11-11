import Foundation
import OCICommon

// MARK: - PrivilegedApiRequestSummary

public struct PrivilegedApiRequestSummary: Codable, Sendable {

    public var id: String?
    public var reasonSummary: String?
    public var resourceId: String?
    public var displayName: String?
    public var requestId: String?
    public var compartmentId: String?
    public var resourceName: String?
    public var subResourceNameList: [String]?
    public var resourceType: String?
    public var privilegedOperationList: [PrivilegedApiRequestOperationDetails]?
    public var state: PrivilegedApiRequestStateEnum?
    public var lifecycleState: PrivilegedApiRequestLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var durationInHrs: Int?
    public var severity: PrivilegedApiRequestSeverityEnum?
    public var timeRequestedForFutureAccess: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, reasonSummary, resourceId, displayName, requestId, compartmentId, resourceName, subResourceNameList, resourceType, privilegedOperationList, state, lifecycleState, lifecycleDetails, timeCreated, timeUpdated, durationInHrs, severity, timeRequestedForFutureAccess, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                reasonSummary: String? = nil,
                resourceId: String? = nil,
                displayName: String? = nil,
                requestId: String? = nil,
                compartmentId: String? = nil,
                resourceName: String? = nil,
                subResourceNameList: [String]? = nil,
                resourceType: String? = nil,
                privilegedOperationList: [PrivilegedApiRequestOperationDetails]? = nil,
                state: PrivilegedApiRequestStateEnum? = nil,
                lifecycleState: PrivilegedApiRequestLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                durationInHrs: Int? = nil,
                severity: PrivilegedApiRequestSeverityEnum? = nil,
                timeRequestedForFutureAccess: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.reasonSummary = reasonSummary
        self.resourceId = resourceId
        self.displayName = displayName
        self.requestId = requestId
        self.compartmentId = compartmentId
        self.resourceName = resourceName
        self.subResourceNameList = subResourceNameList
        self.resourceType = resourceType
        self.privilegedOperationList = privilegedOperationList
        self.state = state
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.durationInHrs = durationInHrs
        self.severity = severity
        self.timeRequestedForFutureAccess = timeRequestedForFutureAccess
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrivilegedApiRequestSummary: CustomStringConvertible {
    public var description: String { "PrivilegedApiRequestSummary()" }
}