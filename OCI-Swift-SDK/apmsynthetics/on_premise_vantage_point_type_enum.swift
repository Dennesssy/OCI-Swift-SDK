import Foundation

// MARK: - OnPremiseVantagePointTypeEnum

public enum OnPremiseVantagePointTypeEnum: String, Codable, Sendable {
    case onPremiseDockerVantagePoint = "ON_PREMISE_DOCKER_VANTAGE_POINT"
}

public extension OnPremiseVantagePointTypeEnum {
    static var allValues: [OnPremiseVantagePointTypeEnum] { [.onPremiseDockerVantagePoint] }
    static var allStringValues: [String] { ["ON_PREMISE_DOCKER_VANTAGE_POINT"] }
    static func fromString(_ value: String) -> OnPremiseVantagePointTypeEnum? { OnPremiseVantagePointTypeEnum(rawValue: value) }
}