import Foundation

// MARK: - BulkUnpinAttributeDetailAttributeNameSpaceEnum

public enum BulkUnpinAttributeDetailAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
    case logs = "LOGS"
}

public extension BulkUnpinAttributeDetailAttributeNameSpaceEnum {
    static var allValues: [BulkUnpinAttributeDetailAttributeNameSpaceEnum] { [.traces, .synthetic, .logs] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC", "LOGS"] }
    static func fromString(_ value: String) -> BulkUnpinAttributeDetailAttributeNameSpaceEnum? { BulkUnpinAttributeDetailAttributeNameSpaceEnum(rawValue: value) }
}