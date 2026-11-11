import Foundation

// MARK: - AttributeUnpinResponseAttributeNameSpaceEnum

public enum AttributeUnpinResponseAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
}

public extension AttributeUnpinResponseAttributeNameSpaceEnum {
    static var allValues: [AttributeUnpinResponseAttributeNameSpaceEnum] { [.traces, .synthetic] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC"] }
    static func fromString(_ value: String) -> AttributeUnpinResponseAttributeNameSpaceEnum? { AttributeUnpinResponseAttributeNameSpaceEnum(rawValue: value) }
}