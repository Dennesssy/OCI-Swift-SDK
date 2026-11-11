import Foundation

// MARK: - GetTraceTraceNamespaceEnum

public enum GetTraceTraceNamespaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
}

public extension GetTraceTraceNamespaceEnum {
    static var allValues: [GetTraceTraceNamespaceEnum] { [.traces, .synthetic] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC"] }
    static func fromString(_ value: String) -> GetTraceTraceNamespaceEnum? { GetTraceTraceNamespaceEnum(rawValue: value) }
}