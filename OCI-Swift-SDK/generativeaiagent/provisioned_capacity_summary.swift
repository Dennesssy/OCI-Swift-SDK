import Foundation
import OCICommon

// MARK: - ProvisionedCapacitySummary

public struct ProvisionedCapacitySummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var numberOfUnits: Int?
    public var timeCreated: Date?
    public var lifecycleState: ProvisionedCapacityLifecycleStateEnum
    public var displayName: String?
    public var description: String?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, numberOfUnits, timeCreated, lifecycleState, displayName, description, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                numberOfUnits: Int? = nil,
                timeCreated: Date? = nil,
                lifecycleState: ProvisionedCapacityLifecycleStateEnum,
                displayName: String? = nil,
                description: String? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.numberOfUnits = numberOfUnits
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.description = description
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
