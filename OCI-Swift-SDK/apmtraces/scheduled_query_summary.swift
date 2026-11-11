import Foundation
import OCICommon

// MARK: - ScheduledQuerySummary

public struct ScheduledQuerySummary: Codable, Sendable {

    public var id: String?
    public var scheduledQueryName: String?
    public var scheduledQueryProcessingType: ScheduledQueryProcessingTypeEnum?
    public var scheduledQueryText: String?
    public var scheduledQuerySchedule: String?
    public var scheduledQueryProcessingSubType: ScheduledQueryProcessingSubTypeEnum?
    public var scheduledQueryProcessingConfiguration: ScheduledQueryProcessingConfig?
    public var scheduledQueryInstances: String?
    public var scheduledQueryNextRunInMs: Int64?
    public var scheduledQueryRetentionCriteria: ScheduledQueryRetentionCriteriaEnum?
    public var lifecycleState: LifecycleStatesEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, scheduledQueryName, scheduledQueryProcessingType, scheduledQueryText, scheduledQuerySchedule, scheduledQueryProcessingSubType, scheduledQueryProcessingConfiguration, scheduledQueryInstances, scheduledQueryNextRunInMs, scheduledQueryRetentionCriteria, lifecycleState, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                scheduledQueryName: String? = nil,
                scheduledQueryProcessingType: ScheduledQueryProcessingTypeEnum? = nil,
                scheduledQueryText: String? = nil,
                scheduledQuerySchedule: String? = nil,
                scheduledQueryProcessingSubType: ScheduledQueryProcessingSubTypeEnum? = nil,
                scheduledQueryProcessingConfiguration: ScheduledQueryProcessingConfig? = nil,
                scheduledQueryInstances: String? = nil,
                scheduledQueryNextRunInMs: Int64? = nil,
                scheduledQueryRetentionCriteria: ScheduledQueryRetentionCriteriaEnum? = nil,
                lifecycleState: LifecycleStatesEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.scheduledQueryName = scheduledQueryName
        self.scheduledQueryProcessingType = scheduledQueryProcessingType
        self.scheduledQueryText = scheduledQueryText
        self.scheduledQuerySchedule = scheduledQuerySchedule
        self.scheduledQueryProcessingSubType = scheduledQueryProcessingSubType
        self.scheduledQueryProcessingConfiguration = scheduledQueryProcessingConfiguration
        self.scheduledQueryInstances = scheduledQueryInstances
        self.scheduledQueryNextRunInMs = scheduledQueryNextRunInMs
        self.scheduledQueryRetentionCriteria = scheduledQueryRetentionCriteria
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScheduledQuerySummary: CustomStringConvertible {
    public var description: String { "ScheduledQuerySummary()" }
}