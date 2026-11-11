import Foundation

// MARK: - InfrastructureLifecycleStateEnum

public enum InfrastructureLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case requiresValidation = "REQUIRES_VALIDATION"
    case validating = "VALIDATING"
    case validationFailed = "VALIDATION_FAILED"
    case requiresActivation = "REQUIRES_ACTIVATION"
    case activating = "ACTIVATING"
    case active = "ACTIVE"
    case activationFailed = "ACTIVATION_FAILED"
    case failed = "FAILED"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case disconnected = "DISCONNECTED"
    case maintenanceInProgress = "MAINTENANCE_IN_PROGRESS"
}

public extension InfrastructureLifecycleStateEnum {
    static var allValues: [InfrastructureLifecycleStateEnum] { [.creating, .requiresValidation, .validating, .validationFailed, .requiresActivation, .activating, .active, .activationFailed, .failed, .updating, .deleting, .deleted, .disconnected, .maintenanceInProgress] }
    static var allStringValues: [String] { ["CREATING", "REQUIRES_VALIDATION", "VALIDATING", "VALIDATION_FAILED", "REQUIRES_ACTIVATION", "ACTIVATING", "ACTIVE", "ACTIVATION_FAILED", "FAILED", "UPDATING", "DELETING", "DELETED", "DISCONNECTED", "MAINTENANCE_IN_PROGRESS"] }
    static func fromString(_ value: String) -> InfrastructureLifecycleStateEnum? { InfrastructureLifecycleStateEnum(rawValue: value) }
}