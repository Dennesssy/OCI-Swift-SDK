import Foundation

// MARK: - SandboxShapeEnum

public enum SandboxShapeEnum: String, Codable, Sendable {
    case small = "SMALL"
    case medium = "MEDIUM"
    case large = "LARGE"
}

public extension SandboxShapeEnum {
    static var allValues: [SandboxShapeEnum] { [.small, .medium, .large] }
    static var allStringValues: [String] { ["SMALL", "MEDIUM", "LARGE"] }
    static func fromString(_ value: String) -> SandboxShapeEnum? { SandboxShapeEnum(rawValue: value) }
}