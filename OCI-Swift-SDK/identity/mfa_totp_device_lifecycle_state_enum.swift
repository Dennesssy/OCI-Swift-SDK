import Foundation

// MARK: - MfaTotpDeviceLifecycleStateEnum

public enum MfaTotpDeviceLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension MfaTotpDeviceLifecycleStateEnum {
    static var allValues: [MfaTotpDeviceLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> MfaTotpDeviceLifecycleStateEnum? { MfaTotpDeviceLifecycleStateEnum(rawValue: value) }
}