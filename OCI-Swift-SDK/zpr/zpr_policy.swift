import Foundation
import OCICommon

// MARK: - ZprPolicy

public struct ZprPolicy: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var description: String?
    public var compartmentId: String?
    public var statements: [String]
    public var lifecycleState: ZprPolicyLifecycleStateEnum
    public var timeCreated: Date?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]?
    public var lifecycleDetails: String?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, name, description, compartmentId, statements, lifecycleState, timeCreated, freeformTags, definedTags, systemTags, lifecycleDetails, timeUpdated
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                description: String? = nil,
                compartmentId: String? = nil,
                statements: [String],
                lifecycleState: ZprPolicyLifecycleStateEnum,
                timeCreated: Date? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]]? = nil,
                lifecycleDetails: String? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.compartmentId = compartmentId
        self.statements = statements
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.lifecycleDetails = lifecycleDetails
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
