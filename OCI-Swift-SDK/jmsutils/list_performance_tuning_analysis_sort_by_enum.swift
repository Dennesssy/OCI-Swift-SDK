import Foundation

// MARK: - ListPerformanceTuningAnalysisSortByEnum

public enum ListPerformanceTuningAnalysisSortByEnum: String, Codable, Sendable {
    case created = "TIME_CREATED"
    case started = "TIME_STARTED"
    case finished = "TIME_FINISHED"
}

public extension ListPerformanceTuningAnalysisSortByEnum {
    static var allValues: [ListPerformanceTuningAnalysisSortByEnum] { [.created, .started, .finished] }
    static var allStringValues: [String] { ["TIME_CREATED", "TIME_STARTED", "TIME_FINISHED"] }
    static func fromString(_ value: String) -> ListPerformanceTuningAnalysisSortByEnum? { ListPerformanceTuningAnalysisSortByEnum(rawValue: value) }
}