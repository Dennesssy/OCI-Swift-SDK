import Foundation

// MARK: - ComputeInstanceGroupRolloutPolicyPolicyTypeEnum

public enum ComputeInstanceGroupRolloutPolicyPolicyTypeEnum: String, Codable, Sendable {
    case count = "COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT"
    case percentage = "COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_PERCENTAGE"
}

public extension ComputeInstanceGroupRolloutPolicyPolicyTypeEnum {
    static var allValues: [ComputeInstanceGroupRolloutPolicyPolicyTypeEnum] { [.count, .percentage] }
    static var allStringValues: [String] { ["COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT", "COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_PERCENTAGE"] }
    static func fromString(_ value: String) -> ComputeInstanceGroupRolloutPolicyPolicyTypeEnum? { ComputeInstanceGroupRolloutPolicyPolicyTypeEnum(rawValue: value) }
}