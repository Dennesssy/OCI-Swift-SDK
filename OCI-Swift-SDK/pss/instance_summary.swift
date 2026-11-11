import Foundation
import OCICommon

// MARK: - InstanceSummary

public struct InstanceSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: InstanceLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var timeUpdated: Date?
    public var lifecycleDetails: String?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, timeCreated, lifecycleState, freeformTags, definedTags, systemTags, timeUpdated, lifecycleDetails
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: InstanceLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InstanceSummary: CustomStringConvertible {
    public var description: String { "InstanceSummary()" }
}