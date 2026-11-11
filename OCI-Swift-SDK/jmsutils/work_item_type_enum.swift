import Foundation

// MARK: - WorkItemTypeEnum

public enum WorkItemTypeEnum: String, Codable, Sendable {
    case performanceTuning = "PERFORMANCE_TUNING"
    case javaMigration = "JAVA_MIGRATION"
}

public extension WorkItemTypeEnum {
    static var allValues: [WorkItemTypeEnum] { [.performanceTuning, .javaMigration] }
    static var allStringValues: [String] { ["PERFORMANCE_TUNING", "JAVA_MIGRATION"] }
    static func fromString(_ value: String) -> WorkItemTypeEnum? { WorkItemTypeEnum(rawValue: value) }
}