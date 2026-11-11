import Foundation

// MARK: - LifecycleStateEnum

public enum LifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleted = "DELETED"
}

public extension LifecycleStateEnum {
    static var allValues: [LifecycleStateEnum] { [.active, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "DELETED"] }
    static func fromString(_ value: String) -> LifecycleStateEnum? { LifecycleStateEnum(rawValue: value) }
}