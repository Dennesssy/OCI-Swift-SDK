import Foundation
import OCICommon

// MARK: - UpdatePrivilegedApiControlDetails

public struct UpdatePrivilegedApiControlDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var resourceType: String?
    public var resources: [String]?
    public var notificationTopicId: String?
    public var approverGroupIdList: [String]?
    public var approverGroupLevelList: [ApproverGroupLevel]?
    public var privilegedOperationList: [PrivilegedApiDetails]?
    public var numberOfApprovers: Int?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, resourceType, resources, notificationTopicId, approverGroupIdList, approverGroupLevelList, privilegedOperationList, numberOfApprovers, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                resourceType: String? = nil,
                resources: [String]? = nil,
                notificationTopicId: String? = nil,
                approverGroupIdList: [String]? = nil,
                approverGroupLevelList: [ApproverGroupLevel]? = nil,
                privilegedOperationList: [PrivilegedApiDetails]? = nil,
                numberOfApprovers: Int? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.resourceType = resourceType
        self.resources = resources
        self.notificationTopicId = notificationTopicId
        self.approverGroupIdList = approverGroupIdList
        self.approverGroupLevelList = approverGroupLevelList
        self.privilegedOperationList = privilegedOperationList
        self.numberOfApprovers = numberOfApprovers
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
