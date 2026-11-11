import Foundation

// MARK: - AttributeResponseAttributeNameSpaceEnum

public enum AttributeResponseAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
}

public extension AttributeResponseAttributeNameSpaceEnum {
    static var allValues: [AttributeResponseAttributeNameSpaceEnum] { [.traces, .synthetic] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC"] }
    static func fromString(_ value: String) -> AttributeResponseAttributeNameSpaceEnum? { AttributeResponseAttributeNameSpaceEnum(rawValue: value) }
}