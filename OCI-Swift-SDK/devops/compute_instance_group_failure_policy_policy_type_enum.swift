import Foundation

// MARK: - ComputeInstanceGroupFailurePolicyPolicyTypeEnum

public enum ComputeInstanceGroupFailurePolicyPolicyTypeEnum: String, Codable, Sendable {
    case count = "COMPUTE_INSTANCE_GROUP_FAILURE_POLICY_BY_COUNT"
    case percentage = "COMPUTE_INSTANCE_GROUP_FAILURE_POLICY_BY_PERCENTAGE"
}

public extension ComputeInstanceGroupFailurePolicyPolicyTypeEnum {
    static var allValues: [ComputeInstanceGroupFailurePolicyPolicyTypeEnum] { [.count, .percentage] }
    static var allStringValues: [String] { ["COMPUTE_INSTANCE_GROUP_FAILURE_POLICY_BY_COUNT", "COMPUTE_INSTANCE_GROUP_FAILURE_POLICY_BY_PERCENTAGE"] }
    static func fromString(_ value: String) -> ComputeInstanceGroupFailurePolicyPolicyTypeEnum? { ComputeInstanceGroupFailurePolicyPolicyTypeEnum(rawValue: value) }
}