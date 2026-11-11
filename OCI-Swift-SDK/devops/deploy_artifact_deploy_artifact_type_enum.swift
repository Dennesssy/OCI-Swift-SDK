import Foundation

// MARK: - DeployArtifactDeployArtifactTypeEnum

public enum DeployArtifactDeployArtifactTypeEnum: String, Codable, Sendable {
    case deploymentSpec = "DEPLOYMENT_SPEC"
    case jobSpec = "JOB_SPEC"
    case kubernetesManifest = "KUBERNETES_MANIFEST"
    case genericFile = "GENERIC_FILE"
    case dockerImage = "DOCKER_IMAGE"
    case helmChart = "HELM_CHART"
    case helmCommandSpec = "HELM_COMMAND_SPEC"
    case commandSpec = "COMMAND_SPEC"
}

public extension DeployArtifactDeployArtifactTypeEnum {
    static var allValues: [DeployArtifactDeployArtifactTypeEnum] { [.deploymentSpec, .jobSpec, .kubernetesManifest, .genericFile, .dockerImage, .helmChart, .helmCommandSpec, .commandSpec] }
    static var allStringValues: [String] { ["DEPLOYMENT_SPEC", "JOB_SPEC", "KUBERNETES_MANIFEST", "GENERIC_FILE", "DOCKER_IMAGE", "HELM_CHART", "HELM_COMMAND_SPEC", "COMMAND_SPEC"] }
    static func fromString(_ value: String) -> DeployArtifactDeployArtifactTypeEnum? { DeployArtifactDeployArtifactTypeEnum(rawValue: value) }
}