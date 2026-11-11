import Foundation

// MARK: - CostAnomalyEventLifecycleStateEnum

public enum CostAnomalyEventLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
}

public extension CostAnomalyEventLifecycleStateEnum {
    static var allValues: [CostAnomalyEventLifecycleStateEnum] { [.active, .inactive] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE"] }
    static func fromString(_ value: String) -> CostAnomalyEventLifecycleStateEnum? { CostAnomalyEventLifecycleStateEnum(rawValue: value) }
}