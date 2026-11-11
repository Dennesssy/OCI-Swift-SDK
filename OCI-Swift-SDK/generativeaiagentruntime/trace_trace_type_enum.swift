import Foundation

// MARK: - TraceTraceTypeEnum

public enum TraceTraceTypeEnum: String, Codable, Sendable {
    case errorTrace = "ERROR_TRACE"
    case retrievalTrace = "RETRIEVAL_TRACE"
    case generationTrace = "GENERATION_TRACE"
    case toolInvocationTrace = "TOOL_INVOCATION_TRACE"
    case planningTrace = "PLANNING_TRACE"
    case executionTrace = "EXECUTION_TRACE"
}

public extension TraceTraceTypeEnum {
    static var allValues: [TraceTraceTypeEnum] { [.errorTrace, .retrievalTrace, .generationTrace, .toolInvocationTrace, .planningTrace, .executionTrace] }
    static var allStringValues: [String] { ["ERROR_TRACE", "RETRIEVAL_TRACE", "GENERATION_TRACE", "TOOL_INVOCATION_TRACE", "PLANNING_TRACE", "EXECUTION_TRACE"] }
    static func fromString(_ value: String) -> TraceTraceTypeEnum? { TraceTraceTypeEnum(rawValue: value) }
}