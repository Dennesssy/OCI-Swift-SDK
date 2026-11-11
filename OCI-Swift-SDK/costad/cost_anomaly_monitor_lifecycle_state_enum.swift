import Foundation

// MARK: - CostAnomalyMonitorLifecycleStateEnum

public enum CostAnomalyMonitorLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleted = "DELETED"
}

public extension CostAnomalyMonitorLifecycleStateEnum {
    static var allValues: [CostAnomalyMonitorLifecycleStateEnum] { [.active, .inactive, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE", "DELETED"] }
    static func fromString(_ value: String) -> CostAnomalyMonitorLifecycleStateEnum? { CostAnomalyMonitorLifecycleStateEnum(rawValue: value) }
}