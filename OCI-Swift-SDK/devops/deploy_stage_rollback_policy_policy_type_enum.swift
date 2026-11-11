import Foundation

// MARK: - DeployStageRollbackPolicyPolicyTypeEnum

public enum DeployStageRollbackPolicyPolicyTypeEnum: String, Codable, Sendable {
    case automatedStageRollbackPolicy = "AUTOMATED_STAGE_ROLLBACK_POLICY"
    case noStageRollbackPolicy = "NO_STAGE_ROLLBACK_POLICY"
}

public extension DeployStageRollbackPolicyPolicyTypeEnum {
    static var allValues: [DeployStageRollbackPolicyPolicyTypeEnum] { [.automatedStageRollbackPolicy, .noStageRollbackPolicy] }
    static var allStringValues: [String] { ["AUTOMATED_STAGE_ROLLBACK_POLICY", "NO_STAGE_ROLLBACK_POLICY"] }
    static func fromString(_ value: String) -> DeployStageRollbackPolicyPolicyTypeEnum? { DeployStageRollbackPolicyPolicyTypeEnum(rawValue: value) }
}