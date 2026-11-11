import Foundation

// MARK: - RateLimitUnitEnum

public enum RateLimitUnitEnum: String, Codable, Sendable {
    case second = "SECOND"
}

public extension RateLimitUnitEnum {
    static var allValues: [RateLimitUnitEnum] { [.second] }
    static var allStringValues: [String] { ["SECOND"] }
    static func fromString(_ value: String) -> RateLimitUnitEnum? { RateLimitUnitEnum(rawValue: value) }
}