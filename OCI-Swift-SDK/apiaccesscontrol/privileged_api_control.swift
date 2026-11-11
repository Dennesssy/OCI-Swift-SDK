import Foundation
import OCICommon

// MARK: - PrivilegedApiControl

public struct PrivilegedApiControl: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var state: String?
    public var lifecycleState: PrivilegedApiControlLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var description: String?
    public var notificationTopicId: String?
    public var approverGroupIdList: [String]?
    public var approverGroupLevelList: [ApproverGroupLevel]?
    public var resourceType: String?
    public var resources: [String]?
    public var privilegedOperationList: [PrivilegedApiDetails]?
    public var numberOfApprovers: Int?
    public var timeUpdated: Date?
    public var timeDeleted: Date?
    public var stateDetails: String?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, timeCreated, state, lifecycleState, freeformTags, definedTags, description, notificationTopicId, approverGroupIdList, approverGroupLevelList, resourceType, resources, privilegedOperationList, numberOfApprovers, timeUpdated, timeDeleted, stateDetails, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                state: String? = nil,
                lifecycleState: PrivilegedApiControlLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                description: String? = nil,
                notificationTopicId: String? = nil,
                approverGroupIdList: [String]? = nil,
                approverGroupLevelList: [ApproverGroupLevel]? = nil,
                resourceType: String? = nil,
                resources: [String]? = nil,
                privilegedOperationList: [PrivilegedApiDetails]? = nil,
                numberOfApprovers: Int? = nil,
                timeUpdated: Date? = nil,
                timeDeleted: Date? = nil,
                stateDetails: String? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.state = state
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.description = description
        self.notificationTopicId = notificationTopicId
        self.approverGroupIdList = approverGroupIdList
        self.approverGroupLevelList = approverGroupLevelList
        self.resourceType = resourceType
        self.resources = resources
        self.privilegedOperationList = privilegedOperationList
        self.numberOfApprovers = numberOfApprovers
        self.timeUpdated = timeUpdated
        self.timeDeleted = timeDeleted
        self.stateDetails = stateDetails
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
