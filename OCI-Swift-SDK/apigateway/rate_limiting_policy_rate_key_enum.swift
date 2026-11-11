import Foundation

// MARK: - RateLimitingPolicyRateKeyEnum

public enum RateLimitingPolicyRateKeyEnum: String, Codable, Sendable {
    case clientIp = "CLIENT_IP"
    case total = "TOTAL"
}

public extension RateLimitingPolicyRateKeyEnum {
    static var allValues: [RateLimitingPolicyRateKeyEnum] { [.clientIp, .total] }
    static var allStringValues: [String] { ["CLIENT_IP", "TOTAL"] }
    static func fromString(_ value: String) -> RateLimitingPolicyRateKeyEnum? { RateLimitingPolicyRateKeyEnum(rawValue: value) }
}