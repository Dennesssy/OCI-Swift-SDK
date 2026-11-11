import Foundation
import OCICommon

// MARK: - Project

public struct Project: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var compartmentId: String?
    public var notificationConfig: NotificationConfig?
    public var description: String?
    public var namespace: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: ProjectLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, name, compartmentId, notificationConfig, description, namespace, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                compartmentId: String? = nil,
                notificationConfig: NotificationConfig? = nil,
                description: String? = nil,
                namespace: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: ProjectLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.name = name
        self.compartmentId = compartmentId
        self.notificationConfig = notificationConfig
        self.description = description
        self.namespace = namespace
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
