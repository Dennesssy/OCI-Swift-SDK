import Foundation

// MARK: - AttributeUpdateResponseAttributeNameSpaceEnum

public enum AttributeUpdateResponseAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
}

public extension AttributeUpdateResponseAttributeNameSpaceEnum {
    static var allValues: [AttributeUpdateResponseAttributeNameSpaceEnum] { [.traces, .synthetic] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC"] }
    static func fromString(_ value: String) -> AttributeUpdateResponseAttributeNameSpaceEnum? { AttributeUpdateResponseAttributeNameSpaceEnum(rawValue: value) }
}