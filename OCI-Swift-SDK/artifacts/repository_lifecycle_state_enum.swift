import Foundation

// MARK: - RepositoryLifecycleStateEnum

public enum RepositoryLifecycleStateEnum: String, Codable, Sendable {
    case available = "AVAILABLE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension RepositoryLifecycleStateEnum {
    static var allValues: [RepositoryLifecycleStateEnum] { [.available, .deleting, .deleted] }
    static var allStringValues: [String] { ["AVAILABLE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> RepositoryLifecycleStateEnum? { RepositoryLifecycleStateEnum(rawValue: value) }
}