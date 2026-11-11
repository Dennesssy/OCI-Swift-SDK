import Foundation

// MARK: - ResourcesSeveritiesEnum

public enum ResourcesSeveritiesEnum: String, Codable, Sendable {
    case critical = "CRITICAL"
    case high = "HIGH"
    case medium = "MEDIUM"
    case low = "LOW"
    case info = "INFO"
    case none = "NONE"
}

public extension ResourcesSeveritiesEnum {
    static var allValues: [ResourcesSeveritiesEnum] { [.critical, .high, .medium, .low, .info, .none] }
    static var allStringValues: [String] { ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO", "NONE"] }
    static func fromString(_ value: String) -> ResourcesSeveritiesEnum? { ResourcesSeveritiesEnum(rawValue: value) }
}