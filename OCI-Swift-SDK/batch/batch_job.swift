import Foundation
import OCICommon

// MARK: - BatchJob

public struct BatchJob: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var batchJobPoolId: String?
    public var batchContextId: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var lifecycleState: BatchJobLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var description: String?
    public var priority: Int?
    public var progressPercentage: Int?
    public var progressDetails: String?
    public var environmentVariables: [EnvironmentVariable]?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, batchJobPoolId, batchContextId, displayName, timeCreated, lifecycleState, freeformTags, definedTags, systemTags, description, priority, progressPercentage, progressDetails, environmentVariables, timeUpdated, lifecycleDetails
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                batchJobPoolId: String? = nil,
                batchContextId: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: BatchJobLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                description: String? = nil,
                priority: Int? = nil,
                progressPercentage: Int? = nil,
                progressDetails: String? = nil,
                environmentVariables: [EnvironmentVariable]? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.batchJobPoolId = batchJobPoolId
        self.batchContextId = batchContextId
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.description = description
        self.priority = priority
        self.progressPercentage = progressPercentage
        self.progressDetails = progressDetails
        self.environmentVariables = environmentVariables
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
