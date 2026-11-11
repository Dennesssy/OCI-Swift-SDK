import Foundation

// MARK: - KnowledgeBaseLifecycleStateEnum

public enum KnowledgeBaseLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension KnowledgeBaseLifecycleStateEnum {
    static var allValues: [KnowledgeBaseLifecycleStateEnum] { [.creating, .updating, .active, .inactive, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> KnowledgeBaseLifecycleStateEnum? { KnowledgeBaseLifecycleStateEnum(rawValue: value) }
}