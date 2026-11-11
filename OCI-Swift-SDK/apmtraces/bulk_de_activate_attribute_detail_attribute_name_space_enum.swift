import Foundation

// MARK: - BulkDeActivateAttributeDetailAttributeNameSpaceEnum

public enum BulkDeActivateAttributeDetailAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
    case logs = "LOGS"
}

public extension BulkDeActivateAttributeDetailAttributeNameSpaceEnum {
    static var allValues: [BulkDeActivateAttributeDetailAttributeNameSpaceEnum] { [.traces, .synthetic, .logs] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC", "LOGS"] }
    static func fromString(_ value: String) -> BulkDeActivateAttributeDetailAttributeNameSpaceEnum? { BulkDeActivateAttributeDetailAttributeNameSpaceEnum(rawValue: value) }
}