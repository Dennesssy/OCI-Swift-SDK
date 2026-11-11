import Foundation

// MARK: - OkeHelmChartDeployStageSummaryPurposeEnum

public enum OkeHelmChartDeployStageSummaryPurposeEnum: String, Codable, Sendable {
    case upgrade = "EXECUTE_HELM_UPGRADE"
    case command = "EXECUTE_HELM_COMMAND"
}

public extension OkeHelmChartDeployStageSummaryPurposeEnum {
    static var allValues: [OkeHelmChartDeployStageSummaryPurposeEnum] { [.upgrade, .command] }
    static var allStringValues: [String] { ["EXECUTE_HELM_UPGRADE", "EXECUTE_HELM_COMMAND"] }
    static func fromString(_ value: String) -> OkeHelmChartDeployStageSummaryPurposeEnum? { OkeHelmChartDeployStageSummaryPurposeEnum(rawValue: value) }
}