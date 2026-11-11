import Foundation

// MARK: - GetSpanSpanNamespaceEnum

public enum GetSpanSpanNamespaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
}

public extension GetSpanSpanNamespaceEnum {
    static var allValues: [GetSpanSpanNamespaceEnum] { [.traces, .synthetic] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC"] }
    static func fromString(_ value: String) -> GetSpanSpanNamespaceEnum? { GetSpanSpanNamespaceEnum(rawValue: value) }
}