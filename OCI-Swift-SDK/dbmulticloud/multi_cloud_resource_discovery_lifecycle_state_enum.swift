import Foundation

// MARK: - MultiCloudResourceDiscoveryLifecycleStateEnum

public enum MultiCloudResourceDiscoveryLifecycleStateEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case waiting = "WAITING"
    case succeeded = "SUCCEEDED"
    case updating = "UPDATING"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
    case failed = "FAILED"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension MultiCloudResourceDiscoveryLifecycleStateEnum {
    static var allValues: [MultiCloudResourceDiscoveryLifecycleStateEnum] { [.accepted, .inProgress, .waiting, .succeeded, .updating, .canceling, .canceled, .failed, .needsAttention] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "WAITING", "SUCCEEDED", "UPDATING", "CANCELING", "CANCELED", "FAILED", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> MultiCloudResourceDiscoveryLifecycleStateEnum? { MultiCloudResourceDiscoveryLifecycleStateEnum(rawValue: value) }
}