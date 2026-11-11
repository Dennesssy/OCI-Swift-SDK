import Foundation

// MARK: - BulkActivateAttributeDetailAttributeNameSpaceEnum

public enum BulkActivateAttributeDetailAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
    case logs = "LOGS"
}

public extension BulkActivateAttributeDetailAttributeNameSpaceEnum {
    static var allValues: [BulkActivateAttributeDetailAttributeNameSpaceEnum] { [.traces, .synthetic, .logs] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC", "LOGS"] }
    static func fromString(_ value: String) -> BulkActivateAttributeDetailAttributeNameSpaceEnum? { BulkActivateAttributeDetailAttributeNameSpaceEnum(rawValue: value) }
}