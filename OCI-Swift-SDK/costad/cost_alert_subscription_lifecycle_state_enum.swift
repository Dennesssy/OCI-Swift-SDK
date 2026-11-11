import Foundation

// MARK: - CostAlertSubscriptionLifecycleStateEnum

public enum CostAlertSubscriptionLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
}

public extension CostAlertSubscriptionLifecycleStateEnum {
    static var allValues: [CostAlertSubscriptionLifecycleStateEnum] { [.active, .inactive] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE"] }
    static func fromString(_ value: String) -> CostAlertSubscriptionLifecycleStateEnum? { CostAlertSubscriptionLifecycleStateEnum(rawValue: value) }
}