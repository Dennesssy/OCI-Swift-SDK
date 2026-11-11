import Foundation

// MARK: - ContainerRepositoryLifecycleStateEnum

public enum ContainerRepositoryLifecycleStateEnum: String, Codable, Sendable {
    case available = "AVAILABLE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension ContainerRepositoryLifecycleStateEnum {
    static var allValues: [ContainerRepositoryLifecycleStateEnum] { [.available, .deleting, .deleted] }
    static var allStringValues: [String] { ["AVAILABLE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> ContainerRepositoryLifecycleStateEnum? { ContainerRepositoryLifecycleStateEnum(rawValue: value) }
}