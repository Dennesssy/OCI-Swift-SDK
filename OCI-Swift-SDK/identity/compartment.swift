import Foundation
import OCICommon

// MARK: - Compartment

public struct Compartment: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var timeCreated: Date?
    public var lifecycleState: CompartmentLifecycleStateEnum
    public var inactiveStatus: Int64?
    public var isAccessible: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, timeCreated, lifecycleState, inactiveStatus, isAccessible, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: CompartmentLifecycleStateEnum,
                inactiveStatus: Int64? = nil,
                isAccessible: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
        self.isAccessible = isAccessible
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
