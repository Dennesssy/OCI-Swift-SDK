import Foundation

// MARK: - TriggerLifecycleStateEnum

public enum TriggerLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleting = "DELETING"
}

public extension TriggerLifecycleStateEnum {
    static var allValues: [TriggerLifecycleStateEnum] { [.active, .deleting] }
    static var allStringValues: [String] { ["ACTIVE", "DELETING"] }
    static func fromString(_ value: String) -> TriggerLifecycleStateEnum? { TriggerLifecycleStateEnum(rawValue: value) }
}