import Foundation

// MARK: - TagDefaultLifecycleStateEnum

public enum TagDefaultLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
}

public extension TagDefaultLifecycleStateEnum {
    static var allValues: [TagDefaultLifecycleStateEnum] { [.active] }
    static var allStringValues: [String] { ["ACTIVE"] }
    static func fromString(_ value: String) -> TagDefaultLifecycleStateEnum? { TagDefaultLifecycleStateEnum(rawValue: value) }
}