import Foundation

// MARK: - AttributeResponseUnitEnum

public enum AttributeResponseUnitEnum: String, Codable, Sendable {
    case none = "NONE"
    case epochTimeMs = "EPOCH_TIME_MS"
    case bytes = "BYTES"
    case count = "COUNT"
    case durationMs = "DURATION_MS"
    case traceStatus = "TRACE_STATUS"
    case percentage = "PERCENTAGE"
}

public extension AttributeResponseUnitEnum {
    static var allValues: [AttributeResponseUnitEnum] { [.none, .epochTimeMs, .bytes, .count, .durationMs, .traceStatus, .percentage] }
    static var allStringValues: [String] { ["NONE", "EPOCH_TIME_MS", "BYTES", "COUNT", "DURATION_MS", "TRACE_STATUS", "PERCENTAGE"] }
    static func fromString(_ value: String) -> AttributeResponseUnitEnum? { AttributeResponseUnitEnum(rawValue: value) }
}