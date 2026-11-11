import Foundation
import OCICommon

// MARK: - FunctionDeployEnvironment

public struct FunctionDeployEnvironment: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var functionId: String?
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var lifecycleState: DeployEnvironmentLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, compartmentId, functionId, description, displayName, timeCreated, timeUpdated, lifecycleDetails, freeformTags, definedTags, systemTags, securityAttributes, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                functionId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil,
                lifecycleState: DeployEnvironmentLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.functionId = functionId
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.securityAttributes = securityAttributes
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
