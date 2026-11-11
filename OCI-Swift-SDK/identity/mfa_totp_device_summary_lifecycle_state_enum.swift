import Foundation

// MARK: - MfaTotpDeviceSummaryLifecycleStateEnum

public enum MfaTotpDeviceSummaryLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension MfaTotpDeviceSummaryLifecycleStateEnum {
    static var allValues: [MfaTotpDeviceSummaryLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> MfaTotpDeviceSummaryLifecycleStateEnum? { MfaTotpDeviceSummaryLifecycleStateEnum(rawValue: value) }
}