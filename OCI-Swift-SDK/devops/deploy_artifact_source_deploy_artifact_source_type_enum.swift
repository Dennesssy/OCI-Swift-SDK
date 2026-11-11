import Foundation

// MARK: - DeployArtifactSourceDeployArtifactSourceTypeEnum

public enum DeployArtifactSourceDeployArtifactSourceTypeEnum: String, Codable, Sendable {
    case inline = "INLINE"
    case ocir = "OCIR"
    case genericArtifact = "GENERIC_ARTIFACT"
    case helmChart = "HELM_CHART"
    case helmCommandSpec = "HELM_COMMAND_SPEC"
}

public extension DeployArtifactSourceDeployArtifactSourceTypeEnum {
    static var allValues: [DeployArtifactSourceDeployArtifactSourceTypeEnum] { [.inline, .ocir, .genericArtifact, .helmChart, .helmCommandSpec] }
    static var allStringValues: [String] { ["INLINE", "OCIR", "GENERIC_ARTIFACT", "HELM_CHART", "HELM_COMMAND_SPEC"] }
    static func fromString(_ value: String) -> DeployArtifactSourceDeployArtifactSourceTypeEnum? { DeployArtifactSourceDeployArtifactSourceTypeEnum(rawValue: value) }
}