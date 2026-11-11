import Foundation

// MARK: - ScheduledQueryProcessingSubTypeEnum

public enum ScheduledQueryProcessingSubTypeEnum: String, Codable, Sendable {
    case objectStorage = "OBJECT_STORAGE"
    case streaming = "STREAMING"
    case customMetric = "CUSTOM_METRIC"
    case none = "NONE"
}

public extension ScheduledQueryProcessingSubTypeEnum {
    static var allValues: [ScheduledQueryProcessingSubTypeEnum] { [.objectStorage, .streaming, .customMetric, .none] }
    static var allStringValues: [String] { ["OBJECT_STORAGE", "STREAMING", "CUSTOM_METRIC", "NONE"] }
    static func fromString(_ value: String) -> ScheduledQueryProcessingSubTypeEnum? { ScheduledQueryProcessingSubTypeEnum(rawValue: value) }
}