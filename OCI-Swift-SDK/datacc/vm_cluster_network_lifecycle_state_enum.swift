import Foundation

// MARK: - VmClusterNetworkLifecycleStateEnum

public enum VmClusterNetworkLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case requiresValidation = "REQUIRES_VALIDATION"
    case validating = "VALIDATING"
    case validated = "VALIDATED"
    case validationFailed = "VALIDATION_FAILED"
    case updating = "UPDATING"
    case allocated = "ALLOCATED"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension VmClusterNetworkLifecycleStateEnum {
    static var allValues: [VmClusterNetworkLifecycleStateEnum] { [.creating, .requiresValidation, .validating, .validated, .validationFailed, .updating, .allocated, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "REQUIRES_VALIDATION", "VALIDATING", "VALIDATED", "VALIDATION_FAILED", "UPDATING", "ALLOCATED", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> VmClusterNetworkLifecycleStateEnum? { VmClusterNetworkLifecycleStateEnum(rawValue: value) }
}