import Foundation

// MARK: - BatchTaskProfileLifecycleStateEnum

public enum BatchTaskProfileLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleted = "DELETED"
}

public extension BatchTaskProfileLifecycleStateEnum {
    static var allValues: [BatchTaskProfileLifecycleStateEnum] { [.active, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "DELETED"] }
    static func fromString(_ value: String) -> BatchTaskProfileLifecycleStateEnum? { BatchTaskProfileLifecycleStateEnum(rawValue: value) }
}