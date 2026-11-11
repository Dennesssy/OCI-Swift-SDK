import Foundation
import OCICommon

// MARK: - UpdateScheduledQueryDetails

public struct UpdateScheduledQueryDetails: Codable, Sendable {

    public var scheduledQueryName: String?
    public var scheduledQueryProcessingType: ScheduledQueryProcessingTypeEnum?
    public var scheduledQueryProcessingSubType: ScheduledQueryProcessingSubTypeEnum?
    public var scheduledQueryText: String?
    public var scheduledQuerySchedule: String?
    public var scheduledQueryDescription: String?
    public var scheduledQueryMaximumRuntimeInSeconds: Int64?
    public var scheduledQueryRetentionPeriodInMs: Int64?
    public var scheduledQueryProcessingConfiguration: ScheduledQueryProcessingConfig?
    public var scheduledQueryRetentionCriteria: ScheduledQueryRetentionCriteriaEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case scheduledQueryName, scheduledQueryProcessingType, scheduledQueryProcessingSubType, scheduledQueryText, scheduledQuerySchedule, scheduledQueryDescription, scheduledQueryMaximumRuntimeInSeconds, scheduledQueryRetentionPeriodInMs, scheduledQueryProcessingConfiguration, scheduledQueryRetentionCriteria, freeformTags, definedTags
    }

    public init(
                scheduledQueryName: String? = nil,
                scheduledQueryProcessingType: ScheduledQueryProcessingTypeEnum? = nil,
                scheduledQueryProcessingSubType: ScheduledQueryProcessingSubTypeEnum? = nil,
                scheduledQueryText: String? = nil,
                scheduledQuerySchedule: String? = nil,
                scheduledQueryDescription: String? = nil,
                scheduledQueryMaximumRuntimeInSeconds: Int64? = nil,
                scheduledQueryRetentionPeriodInMs: Int64? = nil,
                scheduledQueryProcessingConfiguration: ScheduledQueryProcessingConfig? = nil,
                scheduledQueryRetentionCriteria: ScheduledQueryRetentionCriteriaEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.scheduledQueryName = scheduledQueryName
        self.scheduledQueryProcessingType = scheduledQueryProcessingType
        self.scheduledQueryProcessingSubType = scheduledQueryProcessingSubType
        self.scheduledQueryText = scheduledQueryText
        self.scheduledQuerySchedule = scheduledQuerySchedule
        self.scheduledQueryDescription = scheduledQueryDescription
        self.scheduledQueryMaximumRuntimeInSeconds = scheduledQueryMaximumRuntimeInSeconds
        self.scheduledQueryRetentionPeriodInMs = scheduledQueryRetentionPeriodInMs
        self.scheduledQueryProcessingConfiguration = scheduledQueryProcessingConfiguration
        self.scheduledQueryRetentionCriteria = scheduledQueryRetentionCriteria
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateScheduledQueryDetails: CustomStringConvertible {
    public var description: String { "UpdateScheduledQueryDetails()" }
}