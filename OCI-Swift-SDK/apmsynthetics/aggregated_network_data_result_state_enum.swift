import Foundation

// MARK: - AggregatedNetworkDataResultStateEnum

public enum AggregatedNetworkDataResultStateEnum: String, Codable, Sendable {
    case success = "SUCCESS"
    case failure = "FAILURE"
    case partial = "PARTIAL"
}

public extension AggregatedNetworkDataResultStateEnum {
    static var allValues: [AggregatedNetworkDataResultStateEnum] { [.success, .failure, .partial] }
    static var allStringValues: [String] { ["SUCCESS", "FAILURE", "PARTIAL"] }
    static func fromString(_ value: String) -> AggregatedNetworkDataResultStateEnum? { AggregatedNetworkDataResultStateEnum(rawValue: value) }
}