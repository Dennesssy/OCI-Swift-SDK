import Foundation

// MARK: - SandboxSourceSourceTypeEnum

public enum SandboxSourceSourceTypeEnum: String, Codable, Sendable {
    case snapshot = "SNAPSHOT"
}

public extension SandboxSourceSourceTypeEnum {
    static var allValues: [SandboxSourceSourceTypeEnum] { [.snapshot] }
    static var allStringValues: [String] { ["SNAPSHOT"] }
    static func fromString(_ value: String) -> SandboxSourceSourceTypeEnum? { SandboxSourceSourceTypeEnum(rawValue: value) }
}