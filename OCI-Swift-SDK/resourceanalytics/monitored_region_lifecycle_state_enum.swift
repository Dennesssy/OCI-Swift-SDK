import Foundation

// MARK: - MonitoredRegionLifecycleStateEnum

public enum MonitoredRegionLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension MonitoredRegionLifecycleStateEnum {
    static var allValues: [MonitoredRegionLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> MonitoredRegionLifecycleStateEnum? { MonitoredRegionLifecycleStateEnum(rawValue: value) }
}