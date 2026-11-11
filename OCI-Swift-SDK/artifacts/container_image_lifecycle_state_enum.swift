import Foundation

// MARK: - ContainerImageLifecycleStateEnum

public enum ContainerImageLifecycleStateEnum: String, Codable, Sendable {
    case available = "AVAILABLE"
    case deleted = "DELETED"
    case deleting = "DELETING"
}

public extension ContainerImageLifecycleStateEnum {
    static var allValues: [ContainerImageLifecycleStateEnum] { [.available, .deleted, .deleting] }
    static var allStringValues: [String] { ["AVAILABLE", "DELETED", "DELETING"] }
    static func fromString(_ value: String) -> ContainerImageLifecycleStateEnum? { ContainerImageLifecycleStateEnum(rawValue: value) }
}