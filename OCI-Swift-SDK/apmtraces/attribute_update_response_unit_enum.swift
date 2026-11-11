import Foundation

// MARK: - AttributeUpdateResponseUnitEnum

public enum AttributeUpdateResponseUnitEnum: String, Codable, Sendable {
    case none = "NONE"
    case epochTimeMs = "EPOCH_TIME_MS"
    case bytes = "BYTES"
    case count = "COUNT"
    case durationMs = "DURATION_MS"
    case traceStatus = "TRACE_STATUS"
    case percentage = "PERCENTAGE"
}

public extension AttributeUpdateResponseUnitEnum {
    static var allValues: [AttributeUpdateResponseUnitEnum] { [.none, .epochTimeMs, .bytes, .count, .durationMs, .traceStatus, .percentage] }
    static var allStringValues: [String] { ["NONE", "EPOCH_TIME_MS", "BYTES", "COUNT", "DURATION_MS", "TRACE_STATUS", "PERCENTAGE"] }
    static func fromString(_ value: String) -> AttributeUpdateResponseUnitEnum? { AttributeUpdateResponseUnitEnum(rawValue: value) }
}