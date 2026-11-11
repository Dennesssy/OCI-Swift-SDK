import Foundation

// MARK: - PerformanceTuningAnalysisSortByEnum

public enum PerformanceTuningAnalysisSortByEnum: String, Codable, Sendable {
    case timeCreated = "TIME_CREATED"
    case timeStarted = "TIME_STARTED"
    case timeFinished = "TIME_FINISHED"
}

public extension PerformanceTuningAnalysisSortByEnum {
    static var allValues: [PerformanceTuningAnalysisSortByEnum] { [.timeCreated, .timeStarted, .timeFinished] }
    static var allStringValues: [String] { ["TIME_CREATED", "TIME_STARTED", "TIME_FINISHED"] }
    static func fromString(_ value: String) -> PerformanceTuningAnalysisSortByEnum? { PerformanceTuningAnalysisSortByEnum(rawValue: value) }
}