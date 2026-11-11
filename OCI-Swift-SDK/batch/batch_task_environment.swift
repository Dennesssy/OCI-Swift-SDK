import Foundation
import OCICommon

// MARK: - BatchTaskEnvironment

public struct BatchTaskEnvironment: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var imageUrl: String?
    public var volumes: [JSONValue]
    public var lifecycleState: BatchTaskEnvironmentLifecycleStateEnum
    public var timeCreated: Date?
    public var definedTags: [String: [String: JSONValue]]
    public var freeformTags: [String: String]
    public var systemTags: [String: [String: JSONValue]]
    public var description: String?
    public var securityContext: SecurityContext?
    public var workingDirectory: String?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, imageUrl, volumes, lifecycleState, timeCreated, definedTags, freeformTags, systemTags, description, securityContext, workingDirectory, timeUpdated
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                imageUrl: String? = nil,
                volumes: [JSONValue],
                lifecycleState: BatchTaskEnvironmentLifecycleStateEnum,
                timeCreated: Date? = nil,
                definedTags: [String: [String: JSONValue]],
                freeformTags: [String: String],
                systemTags: [String: [String: JSONValue]],
                description: String? = nil,
                securityContext: SecurityContext? = nil,
                workingDirectory: String? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.imageUrl = imageUrl
        self.volumes = volumes
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
        self.description = description
        self.securityContext = securityContext
        self.workingDirectory = workingDirectory
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
