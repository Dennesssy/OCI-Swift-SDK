import Foundation

// MARK: - AttributePinResponseAttributeNameSpaceEnum

public enum AttributePinResponseAttributeNameSpaceEnum: String, Codable, Sendable {
    case traces = "TRACES"
    case synthetic = "SYNTHETIC"
}

public extension AttributePinResponseAttributeNameSpaceEnum {
    static var allValues: [AttributePinResponseAttributeNameSpaceEnum] { [.traces, .synthetic] }
    static var allStringValues: [String] { ["TRACES", "SYNTHETIC"] }
    static func fromString(_ value: String) -> AttributePinResponseAttributeNameSpaceEnum? { AttributePinResponseAttributeNameSpaceEnum(rawValue: value) }
}