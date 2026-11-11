import Foundation

// MARK: - MulticloudSubscriptionSummaryLifecycleStateEnum

public enum MulticloudSubscriptionSummaryLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
}

public extension MulticloudSubscriptionSummaryLifecycleStateEnum {
    static var allValues: [MulticloudSubscriptionSummaryLifecycleStateEnum] { [.active, .inactive] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE"] }
    static func fromString(_ value: String) -> MulticloudSubscriptionSummaryLifecycleStateEnum? { MulticloudSubscriptionSummaryLifecycleStateEnum(rawValue: value) }
}