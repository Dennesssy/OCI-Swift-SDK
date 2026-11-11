import Foundation

// MARK: - OnPremiseVantagePointSummaryTypeEnum

public enum OnPremiseVantagePointSummaryTypeEnum: String, Codable, Sendable {
    case onPremiseDockerVantagePoint = "ON_PREMISE_DOCKER_VANTAGE_POINT"
}

public extension OnPremiseVantagePointSummaryTypeEnum {
    static var allValues: [OnPremiseVantagePointSummaryTypeEnum] { [.onPremiseDockerVantagePoint] }
    static var allStringValues: [String] { ["ON_PREMISE_DOCKER_VANTAGE_POINT"] }
    static func fromString(_ value: String) -> OnPremiseVantagePointSummaryTypeEnum? { OnPremiseVantagePointSummaryTypeEnum(rawValue: value) }
}