import Foundation

// MARK: - DeploymentDeploymentTypeEnum

public enum DeploymentDeploymentTypeEnum: String, Codable, Sendable {
    case pipelineDeployment = "PIPELINE_DEPLOYMENT"
    case pipelineRedeployment = "PIPELINE_REDEPLOYMENT"
    case singleStageDeployment = "SINGLE_STAGE_DEPLOYMENT"
    case singleStageRedeployment = "SINGLE_STAGE_REDEPLOYMENT"
}

public extension DeploymentDeploymentTypeEnum {
    static var allValues: [DeploymentDeploymentTypeEnum] { [.pipelineDeployment, .pipelineRedeployment, .singleStageDeployment, .singleStageRedeployment] }
    static var allStringValues: [String] { ["PIPELINE_DEPLOYMENT", "PIPELINE_REDEPLOYMENT", "SINGLE_STAGE_DEPLOYMENT", "SINGLE_STAGE_REDEPLOYMENT"] }
    static func fromString(_ value: String) -> DeploymentDeploymentTypeEnum? { DeploymentDeploymentTypeEnum(rawValue: value) }
}