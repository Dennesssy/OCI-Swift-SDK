import Foundation

// MARK: - OnPremiseVantagePointWorkerTypeEnum

public enum OnPremiseVantagePointWorkerTypeEnum: String, Codable, Sendable {
    case docker = "DOCKER"
}

public extension OnPremiseVantagePointWorkerTypeEnum {
    static var allValues: [OnPremiseVantagePointWorkerTypeEnum] { [.docker] }
    static var allStringValues: [String] { ["DOCKER"] }
    static func fromString(_ value: String) -> OnPremiseVantagePointWorkerTypeEnum? { OnPremiseVantagePointWorkerTypeEnum(rawValue: value) }
}