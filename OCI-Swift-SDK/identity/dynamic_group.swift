import Foundation
import OCICommon

// MARK: - DynamicGroup

public struct DynamicGroup: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var matchingRule: String?
    public var timeCreated: Date?
    public var lifecycleState: DynamicGroupLifecycleStateEnum
    public var inactiveStatus: Int64?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, matchingRule, timeCreated, lifecycleState, inactiveStatus, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                matchingRule: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: DynamicGroupLifecycleStateEnum,
                inactiveStatus: Int64? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.matchingRule = matchingRule
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
