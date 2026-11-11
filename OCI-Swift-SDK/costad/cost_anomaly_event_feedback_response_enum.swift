import Foundation

// MARK: - CostAnomalyEventFeedbackResponseEnum

public enum CostAnomalyEventFeedbackResponseEnum: String, Codable, Sendable {
    case accurateAnomaly = "ACCURATE_ANOMALY"
    case expectedAnomaly = "EXPECTED_ANOMALY"
}

public extension CostAnomalyEventFeedbackResponseEnum {
    static var allValues: [CostAnomalyEventFeedbackResponseEnum] { [.accurateAnomaly, .expectedAnomaly] }
    static var allStringValues: [String] { ["ACCURATE_ANOMALY", "EXPECTED_ANOMALY"] }
    static func fromString(_ value: String) -> CostAnomalyEventFeedbackResponseEnum? { CostAnomalyEventFeedbackResponseEnum(rawValue: value) }
}