import Foundation
import OCICommon

// MARK: - BatchJobPool

public struct BatchJobPool: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var batchContextId: String?
    public var timeCreated: Date?
    public var lifecycleState: BatchJobPoolLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var description: String?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, batchContextId, timeCreated, lifecycleState, freeformTags, definedTags, systemTags, description, timeUpdated
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                batchContextId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: BatchJobPoolLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                description: String? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.batchContextId = batchContextId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.description = description
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
