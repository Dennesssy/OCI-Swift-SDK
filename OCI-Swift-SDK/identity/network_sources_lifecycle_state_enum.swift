import Foundation

// MARK: - NetworkSourcesLifecycleStateEnum

public enum NetworkSourcesLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension NetworkSourcesLifecycleStateEnum {
    static var allValues: [NetworkSourcesLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> NetworkSourcesLifecycleStateEnum? { NetworkSourcesLifecycleStateEnum(rawValue: value) }
}