import Foundation

// MARK: - NetworkAnchorNetworkAnchorLifecycleStateEnum

public enum NetworkAnchorNetworkAnchorLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension NetworkAnchorNetworkAnchorLifecycleStateEnum {
    static var allValues: [NetworkAnchorNetworkAnchorLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> NetworkAnchorNetworkAnchorLifecycleStateEnum? { NetworkAnchorNetworkAnchorLifecycleStateEnum(rawValue: value) }
}