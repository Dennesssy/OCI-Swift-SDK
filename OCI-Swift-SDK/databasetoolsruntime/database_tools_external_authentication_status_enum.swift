import Foundation

// MARK: - DatabaseToolsExternalAuthenticationStatusEnum

public enum DatabaseToolsExternalAuthenticationStatusEnum: String, Codable, Sendable {
    case available = "AVAILABLE"
    case unavailable = "UNAVAILABLE"
    case enabled = "ENABLED"
    case unknown = "UNKNOWN"
}

public extension DatabaseToolsExternalAuthenticationStatusEnum {
    static var allValues: [DatabaseToolsExternalAuthenticationStatusEnum] { [.available, .unavailable, .enabled, .unknown] }
    static var allStringValues: [String] { ["AVAILABLE", "UNAVAILABLE", "ENABLED", "UNKNOWN"] }
    static func fromString(_ value: String) -> DatabaseToolsExternalAuthenticationStatusEnum? { DatabaseToolsExternalAuthenticationStatusEnum(rawValue: value) }
}