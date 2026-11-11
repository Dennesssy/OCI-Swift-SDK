import Foundation
import OCICommon

// MARK: - CostAnomalyMonitorSummary

public struct CostAnomalyMonitorSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var lifecycleState: CostAnomalyMonitorLifecycleStateEnum
    public var targetResourceFilter: TargetResourceFilter?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var type: MonitorTypeEnum?
    public var description: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, lifecycleState, targetResourceFilter, timeCreated, timeUpdated, type, description, definedTags, freeformTags, systemTags
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
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
