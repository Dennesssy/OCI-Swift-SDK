import Foundation
import OCICommon

// MARK: - triggersummary

public struct triggersummary: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: TriggerLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var triggerSource: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, description, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, freeformTags, definedTags, systemTags, id, projectId, compartmentId, triggerSource
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: TriggerLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                triggerSource: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.id = id
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.triggerSource = triggerSource
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
