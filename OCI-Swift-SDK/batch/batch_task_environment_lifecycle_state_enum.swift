import Foundation

// MARK: - BatchTaskEnvironmentLifecycleStateEnum

public enum BatchTaskEnvironmentLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleted = "DELETED"
}

public extension BatchTaskEnvironmentLifecycleStateEnum {
    static var allValues: [BatchTaskEnvironmentLifecycleStateEnum] { [.active, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "DELETED"] }
    static func fromString(_ value: String) -> BatchTaskEnvironmentLifecycleStateEnum? { BatchTaskEnvironmentLifecycleStateEnum(rawValue: value) }
}