import Foundation

// MARK: - CreateOkeHelmChartDeployStageDetailsPurposeEnum

public enum CreateOkeHelmChartDeployStageDetailsPurposeEnum: String, Codable, Sendable {
    case upgrade = "EXECUTE_HELM_UPGRADE"
    case command = "EXECUTE_HELM_COMMAND"
}

public extension CreateOkeHelmChartDeployStageDetailsPurposeEnum {
    static var allValues: [CreateOkeHelmChartDeployStageDetailsPurposeEnum] { [.upgrade, .command] }
    static var allStringValues: [String] { ["EXECUTE_HELM_UPGRADE", "EXECUTE_HELM_COMMAND"] }
    static func fromString(_ value: String) -> CreateOkeHelmChartDeployStageDetailsPurposeEnum? { CreateOkeHelmChartDeployStageDetailsPurposeEnum(rawValue: value) }
}