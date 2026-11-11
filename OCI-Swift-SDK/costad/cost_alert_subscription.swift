import Foundation
import OCICommon

// MARK: - CostAlertSubscription

public struct CostAlertSubscription: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var lifecycleState: CostAlertSubscriptionLifecycleStateEnum
    public var channels: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var costAnomalyMonitors: JSONValue?
    public var description: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, lifecycleState, channels, timeCreated, timeUpdated, costAnomalyMonitors, description, definedTags, freeformTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                lifecycleState: CostAlertSubscriptionLifecycleStateEnum,
                channels: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                costAnomalyMonitors: JSONValue? = nil,
                description: String? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.lifecycleState = lifecycleState
        self.channels = channels
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.costAnomalyMonitors = costAnomalyMonitors
        self.description = description
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
