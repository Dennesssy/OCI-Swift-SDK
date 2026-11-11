import Foundation

// MARK: - MonitorStatusEnum

public enum MonitorStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
    case invalid = "INVALID"
}

public extension MonitorStatusEnum {
    static var allValues: [MonitorStatusEnum] { [.enabled, .disabled, .invalid] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED", "INVALID"] }
    static func fromString(_ value: String) -> MonitorStatusEnum? { MonitorStatusEnum(rawValue: value) }
}