import Foundation

// MARK: - TraceSourceNameEnum

public enum TraceSourceNameEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synTraces = "SYN_TRACES"
}

public extension TraceSourceNameEnum {
    static var allValues: [TraceSourceNameEnum] { [.traces, .synTraces] }
    static var allStringValues: [String] { ["TRACES", "SYN_TRACES"] }
    static func fromString(_ value: String) -> TraceSourceNameEnum? { TraceSourceNameEnum(rawValue: value) }
}