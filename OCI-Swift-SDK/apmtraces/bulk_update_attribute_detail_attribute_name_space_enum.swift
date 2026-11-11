import Foundation

// MARK: - BulkUpdateAttributeDetailAttributeNameSpaceEnum

public enum BulkUpdateAttributeDetailAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
    case logs = "LOGS"
}

public extension BulkUpdateAttributeDetailAttributeNameSpaceEnum {
    static var allValues: [BulkUpdateAttributeDetailAttributeNameSpaceEnum] { [.traces, .synthetic, .logs] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC", "LOGS"] }
    static func fromString(_ value: String) -> BulkUpdateAttributeDetailAttributeNameSpaceEnum? { BulkUpdateAttributeDetailAttributeNameSpaceEnum(rawValue: value) }
}