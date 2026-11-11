import Foundation

// MARK: - RepositoryLifecycleStateEnum

public enum RepositoryLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case creating = "CREATING"
    case deleted = "DELETED"
    case failed = "FAILED"
    case deleting = "DELETING"
}

public extension RepositoryLifecycleStateEnum {
    static var allValues: [RepositoryLifecycleStateEnum] { [.active, .creating, .deleted, .failed, .deleting] }
    static var allStringValues: [String] { ["ACTIVE", "CREATING", "DELETED", "FAILED", "DELETING"] }
    static func fromString(_ value: String) -> RepositoryLifecycleStateEnum? { RepositoryLifecycleStateEnum(rawValue: value) }
}