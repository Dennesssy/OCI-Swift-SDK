import Foundation
import OCICommon

// MARK: - TagSummary

public struct TagSummary: Codable, Sendable {

    public var compartmentId: String?
    public var id: String?
    public var name: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var isRetired: Bool?
    public var lifecycleState: TagLifecycleStateEnum?
    public var timeCreated: Date?
    public var isCostTracking: Bool?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, name, description, freeformTags, definedTags, isRetired, lifecycleState, timeCreated, isCostTracking
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                name: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                isRetired: Bool? = nil,
                lifecycleState: TagLifecycleStateEnum? = nil,
                timeCreated: Date? = nil,
                isCostTracking: Bool? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.name = name
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.isRetired = isRetired
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.isCostTracking = isCostTracking
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
