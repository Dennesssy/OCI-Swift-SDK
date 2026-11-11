import Foundation

// MARK: - UiPasswordInformationLifecycleStateEnum

public enum UiPasswordInformationLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension UiPasswordInformationLifecycleStateEnum {
    static var allValues: [UiPasswordInformationLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> UiPasswordInformationLifecycleStateEnum? { UiPasswordInformationLifecycleStateEnum(rawValue: value) }
}