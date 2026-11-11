import Foundation
import OCICommon

// MARK: - ProjectSummary

public struct ProjectSummary: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var compartmentId: String?
    public var description: String?
    public var namespace: String?
    public var notificationConfig: NotificationConfig?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var lifecycleState: ProjectLifecycleStateEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, name, compartmentId, description, namespace, notificationConfig, timeCreated, timeUpdated, lifecycleDetails, lifecycleState, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                compartmentId: String? = nil,
                description: String? = nil,
                namespace: String? = nil,
                notificationConfig: NotificationConfig? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                lifecycleState: ProjectLifecycleStateEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.name = name
        self.compartmentId = compartmentId
        self.description = description
        self.namespace = namespace
        self.notificationConfig = notificationConfig
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
