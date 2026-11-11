import Foundation

// MARK: - DiagnosisStoreLifecycleStateEnum

public enum DiagnosisStoreLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension DiagnosisStoreLifecycleStateEnum {
    static var allValues: [DiagnosisStoreLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> DiagnosisStoreLifecycleStateEnum? { DiagnosisStoreLifecycleStateEnum(rawValue: value) }
}