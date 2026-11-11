import Foundation
import OCICommon

// MARK: - deployenvironmentsummary

public struct deployenvironmentsummary: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: DeployEnvironmentLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var deployEnvironmentType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, displayName, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, freeformTags, definedTags, systemTags, securityAttributes, id, projectId, compartmentId, deployEnvironmentType
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: DeployEnvironmentLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil,
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                deployEnvironmentType: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.securityAttributes = securityAttributes
        self.id = id
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.deployEnvironmentType = deployEnvironmentType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
