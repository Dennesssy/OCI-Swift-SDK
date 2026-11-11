import Foundation

// MARK: - DbmsCloudStatusEnum

public enum DbmsCloudStatusEnum: String, Codable, Sendable {
    case available = "AVAILABLE"
    case unavailable = "UNAVAILABLE"
}

public extension DbmsCloudStatusEnum {
    static var allValues: [DbmsCloudStatusEnum] { [.available, .unavailable] }
    static var allStringValues: [String] { ["AVAILABLE", "UNAVAILABLE"] }
    static func fromString(_ value: String) -> DbmsCloudStatusEnum? { DbmsCloudStatusEnum(rawValue: value) }
}