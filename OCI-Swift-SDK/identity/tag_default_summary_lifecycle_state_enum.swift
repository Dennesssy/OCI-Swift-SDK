import Foundation

// MARK: - TagDefaultSummaryLifecycleStateEnum

public enum TagDefaultSummaryLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
}

public extension TagDefaultSummaryLifecycleStateEnum {
    static var allValues: [TagDefaultSummaryLifecycleStateEnum] { [.active] }
    static var allStringValues: [String] { ["ACTIVE"] }
    static func fromString(_ value: String) -> TagDefaultSummaryLifecycleStateEnum? { TagDefaultSummaryLifecycleStateEnum(rawValue: value) }
}