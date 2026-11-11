import Foundation

// MARK: - PerformanceTuningAnalysisResultEnum

public enum PerformanceTuningAnalysisResultEnum: String, Codable, Sendable {
    case actionRecommended = "ACTION_RECOMMENDED"
    case noWarnings = "NO_WARNINGS"
}

public extension PerformanceTuningAnalysisResultEnum {
    static var allValues: [PerformanceTuningAnalysisResultEnum] { [.actionRecommended, .noWarnings] }
    static var allStringValues: [String] { ["ACTION_RECOMMENDED", "NO_WARNINGS"] }
    static func fromString(_ value: String) -> PerformanceTuningAnalysisResultEnum? { PerformanceTuningAnalysisResultEnum(rawValue: value) }
}