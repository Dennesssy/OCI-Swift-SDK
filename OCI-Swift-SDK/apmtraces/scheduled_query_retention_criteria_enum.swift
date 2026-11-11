import Foundation

// MARK: - ScheduledQueryRetentionCriteriaEnum

public enum ScheduledQueryRetentionCriteriaEnum: String, Codable, Sendable {
    case keepDataUntilRetentionPeriod = "KEEP_DATA_UNTIL_RETENTION_PERIOD"
    case update = "UPDATE"
}

public extension ScheduledQueryRetentionCriteriaEnum {
    static var allValues: [ScheduledQueryRetentionCriteriaEnum] { [.keepDataUntilRetentionPeriod, .update] }
    static var allStringValues: [String] { ["KEEP_DATA_UNTIL_RETENTION_PERIOD", "UPDATE"] }
    static func fromString(_ value: String) -> ScheduledQueryRetentionCriteriaEnum? { ScheduledQueryRetentionCriteriaEnum(rawValue: value) }
}