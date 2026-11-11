import Foundation

// MARK: - BuildPipelineStageBuildPipelineStageTypeEnum

public enum BuildPipelineStageBuildPipelineStageTypeEnum: String, Codable, Sendable {
    case wait = "WAIT"
    case build = "BUILD"
    case deliverArtifact = "DELIVER_ARTIFACT"
    case triggerDeploymentPipeline = "TRIGGER_DEPLOYMENT_PIPELINE"
}

public extension BuildPipelineStageBuildPipelineStageTypeEnum {
    static var allValues: [BuildPipelineStageBuildPipelineStageTypeEnum] { [.wait, .build, .deliverArtifact, .triggerDeploymentPipeline] }
    static var allStringValues: [String] { ["WAIT", "BUILD", "DELIVER_ARTIFACT", "TRIGGER_DEPLOYMENT_PIPELINE"] }
    static func fromString(_ value: String) -> BuildPipelineStageBuildPipelineStageTypeEnum? { BuildPipelineStageBuildPipelineStageTypeEnum(rawValue: value) }
}