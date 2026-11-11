import Foundation
import OCICommon

// MARK: - connectionsummary

public struct connectionsummary: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lastConnectionValidationResult: ConnectionValidationResult?
    public var lifecycleDetails: String?
    public var lifecycleState: ConnectionLifecycleStateEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var id: String?
    public var compartmentId: String?
    public var projectId: String?
    public var connectionType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, description, timeCreated, timeUpdated, lastConnectionValidationResult, lifecycleDetails, lifecycleState, freeformTags, definedTags, systemTags, id, compartmentId, projectId, connectionType
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lastConnectionValidationResult: ConnectionValidationResult? = nil,
                lifecycleDetails: String? = nil,
                lifecycleState: ConnectionLifecycleStateEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                id: String? = nil,
                compartmentId: String? = nil,
                projectId: String? = nil,
                connectionType: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lastConnectionValidationResult = lastConnectionValidationResult
        self.lifecycleDetails = lifecycleDetails
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.id = id
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.connectionType = connectionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
