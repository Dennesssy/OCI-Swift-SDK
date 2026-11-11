import Foundation
import OCICommon

// MARK: - KafkaClusterConfigSummary

public struct KafkaClusterConfigSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: KafkaClusterConfigLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, timeCreated, lifecycleState, freeformTags, definedTags, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: KafkaClusterConfigLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KafkaClusterConfigSummary: CustomStringConvertible {
    public var description: String { "KafkaClusterConfigSummary()" }
}