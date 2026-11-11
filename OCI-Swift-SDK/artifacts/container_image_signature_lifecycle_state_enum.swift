import Foundation

// MARK: - ContainerImageSignatureLifecycleStateEnum

public enum ContainerImageSignatureLifecycleStateEnum: String, Codable, Sendable {
    case available = "AVAILABLE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension ContainerImageSignatureLifecycleStateEnum {
    static var allValues: [ContainerImageSignatureLifecycleStateEnum] { [.available, .deleting, .deleted] }
    static var allStringValues: [String] { ["AVAILABLE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> ContainerImageSignatureLifecycleStateEnum? { ContainerImageSignatureLifecycleStateEnum(rawValue: value) }
}