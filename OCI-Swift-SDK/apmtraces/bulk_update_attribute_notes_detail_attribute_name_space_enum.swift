import Foundation

// MARK: - BulkUpdateAttributeNotesDetailAttributeNameSpaceEnum

public enum BulkUpdateAttributeNotesDetailAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
    case logs = "LOGS"
}

public extension BulkUpdateAttributeNotesDetailAttributeNameSpaceEnum {
    static var allValues: [BulkUpdateAttributeNotesDetailAttributeNameSpaceEnum] { [.traces, .synthetic, .logs] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC", "LOGS"] }
    static func fromString(_ value: String) -> BulkUpdateAttributeNotesDetailAttributeNameSpaceEnum? { BulkUpdateAttributeNotesDetailAttributeNameSpaceEnum(rawValue: value) }
}