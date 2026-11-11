import Foundation
import OCICommon

// MARK: - ScheduledQuery

public struct ScheduledQuery: Codable, Sendable {

    public var id: String?
    public var scheduledQueryProcessingType: ScheduledQueryProcessingTypeEnum?
    public var scheduledQueryName: String?
    public var scheduledQueryText: String?
    public var scheduledQueryDescription: String?
    public var scheduledQuerySchedule: String?
    public var scheduledQueryMaximumRuntimeInSeconds: Int64?
    public var scheduledQueryNextRunInMs: Int64?
    public var scheduledQueryRetentionPeriodInMs: Int64?
    public var scheduledQueryProcessingSubType: ScheduledQueryProcessingSubTypeEnum?
    public var scheduledQueryProcessingConfiguration: ScheduledQueryProcessingConfig?
    public var scheduledQueryRetentionCriteria: ScheduledQueryRetentionCriteriaEnum?
    public var scheduledQueryInstances: String?
    public var lifecycleState: LifecycleStatesEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, scheduledQueryProcessingType, scheduledQueryName, scheduledQueryText, scheduledQueryDescription, scheduledQuerySchedule, scheduledQueryMaximumRuntimeInSeconds, scheduledQueryNextRunInMs, scheduledQueryRetentionPeriodInMs, scheduledQueryProcessingSubType, scheduledQueryProcessingConfiguration, scheduledQueryRetentionCriteria, scheduledQueryInstances, lifecycleState, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                scheduledQueryProcessingType: ScheduledQueryProcessingTypeEnum? = nil,
                scheduledQueryName: String? = nil,
                scheduledQueryText: String? = nil,
                scheduledQueryDescription: String? = nil,
                scheduledQuerySchedule: String? = nil,
                scheduledQueryMaximumRuntimeInSeconds: Int64? = nil,
                scheduledQueryNextRunInMs: Int64? = nil,
                scheduledQueryRetentionPeriodInMs: Int64? = nil,
                scheduledQueryProcessingSubType: ScheduledQueryProcessingSubTypeEnum? = nil,
                scheduledQueryProcessingConfiguration: ScheduledQueryProcessingConfig? = nil,
                scheduledQueryRetentionCriteria: ScheduledQueryRetentionCriteriaEnum? = nil,
                scheduledQueryInstances: String? = nil,
                lifecycleState: LifecycleStatesEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.scheduledQueryProcessingType = scheduledQueryProcessingType
        self.scheduledQueryName = scheduledQueryName
        self.scheduledQueryText = scheduledQueryText
        self.scheduledQueryDescription = scheduledQueryDescription
        self.scheduledQuerySchedule = scheduledQuerySchedule
        self.scheduledQueryMaximumRuntimeInSeconds = scheduledQueryMaximumRuntimeInSeconds
        self.scheduledQueryNextRunInMs = scheduledQueryNextRunInMs
        self.scheduledQueryRetentionPeriodInMs = scheduledQueryRetentionPeriodInMs
        self.scheduledQueryProcessingSubType = scheduledQueryProcessingSubType
        self.scheduledQueryProcessingConfiguration = scheduledQueryProcessingConfiguration
        self.scheduledQueryRetentionCriteria = scheduledQueryRetentionCriteria
        self.scheduledQueryInstances = scheduledQueryInstances
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScheduledQuery: CustomStringConvertible {
    public var description: String { "ScheduledQuery()" }
}