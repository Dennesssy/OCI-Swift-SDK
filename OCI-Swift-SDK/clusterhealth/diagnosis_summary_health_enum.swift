import Foundation

// MARK: - DiagnosisSummaryHealthEnum

public enum DiagnosisSummaryHealthEnum: String, Codable, Sendable {
    case healthy = "HEALTHY"
    case unhealthy = "UNHEALTHY"
}

public extension DiagnosisSummaryHealthEnum {
    static var allValues: [DiagnosisSummaryHealthEnum] { [.healthy, .unhealthy] }
    static var allStringValues: [String] { ["HEALTHY", "UNHEALTHY"] }
    static func fromString(_ value: String) -> DiagnosisSummaryHealthEnum? { DiagnosisSummaryHealthEnum(rawValue: value) }
}