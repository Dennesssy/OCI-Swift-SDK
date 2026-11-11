import Foundation
import OCICommon

// MARK: - BitbucketServerTriggerCreateResult

public struct BitbucketServerTriggerCreateResult: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var actions: [JSONValue]
    public var secret: String?
    public var triggerUrl: String?
    public var displayName: String?
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var lifecycleState: TriggerLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, compartmentId, actions, secret, triggerUrl, displayName, description, timeCreated, timeUpdated, lifecycleDetails, freeformTags, definedTags, systemTags, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                actions: [JSONValue],
                secret: String? = nil,
                triggerUrl: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                lifecycleState: TriggerLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.actions = actions
        self.secret = secret
        self.triggerUrl = triggerUrl
        self.displayName = displayName
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
