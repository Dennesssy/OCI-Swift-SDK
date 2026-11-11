import Foundation

// MARK: - BulkPinAttributeDetailAttributeNameSpaceEnum

public enum BulkPinAttributeDetailAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
    case logs = "LOGS"
}

public extension BulkPinAttributeDetailAttributeNameSpaceEnum {
    static var allValues: [BulkPinAttributeDetailAttributeNameSpaceEnum] { [.traces, .synthetic, .logs] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC", "LOGS"] }
    static func fromString(_ value: String) -> BulkPinAttributeDetailAttributeNameSpaceEnum? { BulkPinAttributeDetailAttributeNameSpaceEnum(rawValue: value) }
}