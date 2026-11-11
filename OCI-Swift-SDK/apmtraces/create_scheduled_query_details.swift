import Foundation
import OCICommon

// MARK: - CreateScheduledQueryDetails

public struct CreateScheduledQueryDetails: Codable, Sendable {

    public var scheduledQueryName: String?
    public var scheduledQueryProcessingType: ScheduledQueryProcessingTypeEnum?
    public var scheduledQueryText: String?
    public var scheduledQuerySchedule: String?
    public var scheduledQueryDescription: String?
    public var scheduledQueryMaximumRuntimeInSeconds: Int64?
    public var scheduledQueryRetentionPeriodInMs: Int64?
    public var scheduledQueryProcessingSubType: ScheduledQueryProcessingSubTypeEnum?
    public var scheduledQueryProcessingConfiguration: ScheduledQueryProcessingConfig?
    public var scheduledQueryRetentionCriteria: ScheduledQueryRetentionCriteriaEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case scheduledQueryName, scheduledQueryProcessingType, scheduledQueryText, scheduledQuerySchedule, scheduledQueryDescription, scheduledQueryMaximumRuntimeInSeconds, scheduledQueryRetentionPeriodInMs, scheduledQueryProcessingSubType, scheduledQueryProcessingConfiguration, scheduledQueryRetentionCriteria, freeformTags, definedTags
    }

    public init(
                scheduledQueryName: String? = nil,
                scheduledQueryProcessingType: ScheduledQueryProcessingTypeEnum? = nil,
                scheduledQueryText: String? = nil,
                scheduledQuerySchedule: String? = nil,
                scheduledQueryDescription: String? = nil,
                scheduledQueryMaximumRuntimeInSeconds: Int64? = nil,
                scheduledQueryRetentionPeriodInMs: Int64? = nil,
                scheduledQueryProcessingSubType: ScheduledQueryProcessingSubTypeEnum? = nil,
                scheduledQueryProcessingConfiguration: ScheduledQueryProcessingConfig? = nil,
                scheduledQueryRetentionCriteria: ScheduledQueryRetentionCriteriaEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.scheduledQueryName = scheduledQueryName
        self.scheduledQueryProcessingType = scheduledQueryProcessingType
        self.scheduledQueryText = scheduledQueryText
        self.scheduledQuerySchedule = scheduledQuerySchedule
        self.scheduledQueryDescription = scheduledQueryDescription
        self.scheduledQueryMaximumRuntimeInSeconds = scheduledQueryMaximumRuntimeInSeconds
        self.scheduledQueryRetentionPeriodInMs = scheduledQueryRetentionPeriodInMs
        self.scheduledQueryProcessingSubType = scheduledQueryProcessingSubType
        self.scheduledQueryProcessingConfiguration = scheduledQueryProcessingConfiguration
        self.scheduledQueryRetentionCriteria = scheduledQueryRetentionCriteria
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateScheduledQueryDetails: CustomStringConvertible {
    public var description: String { "CreateScheduledQueryDetails()" }
}