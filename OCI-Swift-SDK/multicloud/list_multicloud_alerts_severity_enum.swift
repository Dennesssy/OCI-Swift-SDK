import Foundation

// MARK: - ListMulticloudAlertsSeverityEnum

public enum ListMulticloudAlertsSeverityEnum: String, Codable, Sendable {
    case low = "LOW"
    case medium = "MEDIUM"
    case high = "HIGH"
    case critical = "CRITICAL"
}

public extension ListMulticloudAlertsSeverityEnum {
    static var allValues: [ListMulticloudAlertsSeverityEnum] { [.low, .medium, .high, .critical] }
    static var allStringValues: [String] { ["LOW", "MEDIUM", "HIGH", "CRITICAL"] }
    static func fromString(_ value: String) -> ListMulticloudAlertsSeverityEnum? { ListMulticloudAlertsSeverityEnum(rawValue: value) }
}