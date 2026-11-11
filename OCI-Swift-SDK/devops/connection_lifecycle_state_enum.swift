import Foundation

// MARK: - ConnectionLifecycleStateEnum

public enum ConnectionLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleting = "DELETING"
}

public extension ConnectionLifecycleStateEnum {
    static var allValues: [ConnectionLifecycleStateEnum] { [.active, .deleting] }
    static var allStringValues: [String] { ["ACTIVE", "DELETING"] }
    static func fromString(_ value: String) -> ConnectionLifecycleStateEnum? { ConnectionLifecycleStateEnum(rawValue: value) }
}