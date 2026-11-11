import Foundation

// MARK: - GenericArtifactLifecycleStateEnum

public enum GenericArtifactLifecycleStateEnum: String, Codable, Sendable {
    case available = "AVAILABLE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension GenericArtifactLifecycleStateEnum {
    static var allValues: [GenericArtifactLifecycleStateEnum] { [.available, .deleting, .deleted] }
    static var allStringValues: [String] { ["AVAILABLE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> GenericArtifactLifecycleStateEnum? { GenericArtifactLifecycleStateEnum(rawValue: value) }
}