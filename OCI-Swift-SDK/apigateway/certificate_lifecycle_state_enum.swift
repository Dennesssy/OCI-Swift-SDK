import Foundation

// MARK: - CertificateLifecycleStateEnum

public enum CertificateLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension CertificateLifecycleStateEnum {
    static var allValues: [CertificateLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> CertificateLifecycleStateEnum? { CertificateLifecycleStateEnum(rawValue: value) }
}