import Foundation

// MARK: - OkeHelmChartDeployStagePurposeEnum

public enum OkeHelmChartDeployStagePurposeEnum: String, Codable, Sendable {
    case upgrade = "EXECUTE_HELM_UPGRADE"
    case command = "EXECUTE_HELM_COMMAND"
}

public extension OkeHelmChartDeployStagePurposeEnum {
    static var allValues: [OkeHelmChartDeployStagePurposeEnum] { [.upgrade, .command] }
    static var allStringValues: [String] { ["EXECUTE_HELM_UPGRADE", "EXECUTE_HELM_COMMAND"] }
    static func fromString(_ value: String) -> OkeHelmChartDeployStagePurposeEnum? { OkeHelmChartDeployStagePurposeEnum(rawValue: value) }
}