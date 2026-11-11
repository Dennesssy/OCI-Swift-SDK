import Foundation

// MARK: - TagMetadataTagUnitEnum

public enum TagMetadataTagUnitEnum: String, Codable, Sendable {
    case epochTimeMs = "EPOCH_TIME_MS"
    case bytes = "BYTES"
    case count = "COUNT"
    case durationMs = "DURATION_MS"
    case traceStatus = "TRACE_STATUS"
    case percentage = "PERCENTAGE"
    case none = "NONE"
}

public extension TagMetadataTagUnitEnum {
    static var allValues: [TagMetadataTagUnitEnum] { [.epochTimeMs, .bytes, .count, .durationMs, .traceStatus, .percentage, .none] }
    static var allStringValues: [String] { ["EPOCH_TIME_MS", "BYTES", "COUNT", "DURATION_MS", "TRACE_STATUS", "PERCENTAGE", "NONE"] }
    static func fromString(_ value: String) -> TagMetadataTagUnitEnum? { TagMetadataTagUnitEnum(rawValue: value) }
}