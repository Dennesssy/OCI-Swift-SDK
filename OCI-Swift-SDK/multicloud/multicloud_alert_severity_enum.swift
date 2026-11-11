import Foundation

// MARK: - MulticloudAlertSeverityEnum

public enum MulticloudAlertSeverityEnum: String, Codable, Sendable {
    case low = "LOW"
    case medium = "MEDIUM"
    case high = "HIGH"
    case critical = "CRITICAL"
}

public extension MulticloudAlertSeverityEnum {
    static var allValues: [MulticloudAlertSeverityEnum] { [.low, .medium, .high, .critical] }
    static var allStringValues: [String] { ["LOW", "MEDIUM", "HIGH", "CRITICAL"] }
    static func fromString(_ value: String) -> MulticloudAlertSeverityEnum? { MulticloudAlertSeverityEnum(rawValue: value) }
}