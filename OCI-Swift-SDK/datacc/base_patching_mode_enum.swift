import Foundation

// MARK: - BasePatchingModeEnum

public enum BasePatchingModeEnum: String, Codable, Sendable {
    case rolling = "ROLLING"
    case nonrolling = "NONROLLING"
}

public extension BasePatchingModeEnum {
    static var allValues: [BasePatchingModeEnum] { [.rolling, .nonrolling] }
    static var allStringValues: [String] { ["ROLLING", "NONROLLING"] }
    static func fromString(_ value: String) -> BasePatchingModeEnum? { BasePatchingModeEnum(rawValue: value) }
}