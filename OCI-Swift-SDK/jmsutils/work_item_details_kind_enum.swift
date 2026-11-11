import Foundation

// MARK: - WorkItemDetailsKindEnum

public enum WorkItemDetailsKindEnum: String, Codable, Sendable {
    case basic = "BASIC"
    case javaMigration = "JAVA_MIGRATION"
    case performanceTuning = "PERFORMANCE_TUNING"
}

public extension WorkItemDetailsKindEnum {
    static var allValues: [WorkItemDetailsKindEnum] { [.basic, .javaMigration, .performanceTuning] }
    static var allStringValues: [String] { ["BASIC", "JAVA_MIGRATION", "PERFORMANCE_TUNING"] }
    static func fromString(_ value: String) -> WorkItemDetailsKindEnum? { WorkItemDetailsKindEnum(rawValue: value) }
}