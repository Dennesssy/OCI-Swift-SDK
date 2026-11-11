import Foundation

// MARK: - CreateOnPremiseVantagePointDetailsTypeEnum

public enum CreateOnPremiseVantagePointDetailsTypeEnum: String, Codable, Sendable {
    case onPremiseDockerVantagePoint = "ON_PREMISE_DOCKER_VANTAGE_POINT"
}

public extension CreateOnPremiseVantagePointDetailsTypeEnum {
    static var allValues: [CreateOnPremiseVantagePointDetailsTypeEnum] { [.onPremiseDockerVantagePoint] }
    static var allStringValues: [String] { ["ON_PREMISE_DOCKER_VANTAGE_POINT"] }
    static func fromString(_ value: String) -> CreateOnPremiseVantagePointDetailsTypeEnum? { CreateOnPremiseVantagePointDetailsTypeEnum(rawValue: value) }
}