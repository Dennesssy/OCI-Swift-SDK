import Foundation
import OCICommon

// MARK: - CostAnomalyMonitor

public struct CostAnomalyMonitor: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var lifecycleState: CostAnomalyMonitorLifecycleStateEnum
    public var targetResourceFilter: TargetResourceFilter?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var type: MonitorTypeEnum?
    public var description: String?
    public var lifecycleDetails: String?
    public var costAlertSubscriptionMap: CostAlertSubscriptionMap?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, lifecycleState, targetResourceFilter, timeCreated, timeUpdated, type, description, lifecycleDetails, costAlertSubscriptionMap, definedTags, freeformTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                lifecycleState: CostAnomalyMonitorLifecycleStateEnum,
                targetResourceFilter: TargetResourceFilter? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                type: MonitorTypeEnum? = nil,
                description: String? = nil,
                lifecycleDetails: String? = nil,
                costAlertSubscriptionMap: CostAlertSubscriptionMap? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.lifecycleState = lifecycleState
        self.targetResourceFilter = targetResourceFilter
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.type = type
        self.description = description
        self.lifecycleDetails = lifecycleDetails
        self.costAlertSubscriptionMap = costAlertSubscriptionMap
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
