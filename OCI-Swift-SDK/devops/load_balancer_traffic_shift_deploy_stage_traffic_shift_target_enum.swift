import Foundation

// MARK: - LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum

public enum LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum: String, Codable, Sendable {
    case autoSelect = "AUTO_SELECT"
    case blue = "BLUE"
    case green = "GREEN"
}

public extension LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum {
    static var allValues: [LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum] { [.autoSelect, .blue, .green] }
    static var allStringValues: [String] { ["AUTO_SELECT", "BLUE", "GREEN"] }
    static func fromString(_ value: String) -> LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum? { LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum(rawValue: value) }
}