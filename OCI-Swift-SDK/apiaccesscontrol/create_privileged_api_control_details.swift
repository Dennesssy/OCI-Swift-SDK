import Foundation
import OCICommon

// MARK: - CreatePrivilegedApiControlDetails

public struct CreatePrivilegedApiControlDetails: Codable, Sendable {

    public var compartmentId: String?
    public var notificationTopicId: String?
    public var approverGroupIdList: [String]
    public var privilegedOperationList: [PrivilegedApiDetails]
    public var resourceType: String?
    public var displayName: String?
    public var description: String?
    public var approverGroupLevelList: [ApproverGroupLevel]?
    public var resources: [String]?
    public var numberOfApprovers: Int?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, notificationTopicId, approverGroupIdList, privilegedOperationList, resourceType, displayName, description, approverGroupLevelList, resources, numberOfApprovers, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                notificationTopicId: String? = nil,
                approverGroupIdList: [String],
                privilegedOperationList: [PrivilegedApiDetails],
                resourceType: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                approverGroupLevelList: [ApproverGroupLevel]? = nil,
                resources: [String]? = nil,
                numberOfApprovers: Int? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.notificationTopicId = notificationTopicId
        self.approverGroupIdList = approverGroupIdList
        self.privilegedOperationList = privilegedOperationList
        self.resourceType = resourceType
        self.displayName = displayName
        self.description = description
        self.approverGroupLevelList = approverGroupLevelList
        self.resources = resources
        self.numberOfApprovers = numberOfApprovers
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
