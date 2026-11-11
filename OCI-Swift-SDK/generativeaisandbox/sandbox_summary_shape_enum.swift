import Foundation

// MARK: - SandboxSummaryShapeEnum

public enum SandboxSummaryShapeEnum: String, Codable, Sendable {
    case small = "SMALL"
    case medium = "MEDIUM"
    case large = "LARGE"
}

public extension SandboxSummaryShapeEnum {
    static var allValues: [SandboxSummaryShapeEnum] { [.small, .medium, .large] }
    static var allStringValues: [String] { ["SMALL", "MEDIUM", "LARGE"] }
    static func fromString(_ value: String) -> SandboxSummaryShapeEnum? { SandboxSummaryShapeEnum(rawValue: value) }
}