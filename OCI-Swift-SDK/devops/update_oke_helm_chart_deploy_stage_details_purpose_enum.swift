import Foundation

// MARK: - UpdateOkeHelmChartDeployStageDetailsPurposeEnum

public enum UpdateOkeHelmChartDeployStageDetailsPurposeEnum: String, Codable, Sendable {
    case upgrade = "EXECUTE_HELM_UPGRADE"
    case command = "EXECUTE_HELM_COMMAND"
}

public extension UpdateOkeHelmChartDeployStageDetailsPurposeEnum {
    static var allValues: [UpdateOkeHelmChartDeployStageDetailsPurposeEnum] { [.upgrade, .command] }
    static var allStringValues: [String] { ["EXECUTE_HELM_UPGRADE", "EXECUTE_HELM_COMMAND"] }
    static func fromString(_ value: String) -> UpdateOkeHelmChartDeployStageDetailsPurposeEnum? { UpdateOkeHelmChartDeployStageDetailsPurposeEnum(rawValue: value) }
}