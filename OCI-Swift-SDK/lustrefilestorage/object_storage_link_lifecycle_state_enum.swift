import Foundation

// MARK: - ObjectStorageLinkLifecycleStateEnum

public enum ObjectStorageLinkLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension ObjectStorageLinkLifecycleStateEnum {
    static var allValues: [ObjectStorageLinkLifecycleStateEnum] { [.creating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> ObjectStorageLinkLifecycleStateEnum? { ObjectStorageLinkLifecycleStateEnum(rawValue: value) }
}