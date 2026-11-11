import Foundation

// MARK: - AttributeUpdateNotesResponseAttributeNameSpaceEnum

public enum AttributeUpdateNotesResponseAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
}

public extension AttributeUpdateNotesResponseAttributeNameSpaceEnum {
    static var allValues: [AttributeUpdateNotesResponseAttributeNameSpaceEnum] { [.traces, .synthetic] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC"] }
    static func fromString(_ value: String) -> AttributeUpdateNotesResponseAttributeNameSpaceEnum? { AttributeUpdateNotesResponseAttributeNameSpaceEnum(rawValue: value) }
}