import Foundation

// MARK: - RateLimitingPolicy

public struct RateLimitingPolicy: Codable, Sendable {

    public var rateInRequestsPerSecond: Int?
    public var rateKey: RateLimitingPolicyRateKeyEnum

    private enum CodingKeys: String, CodingKey {
        case rateInRequestsPerSecond, rateKey
    }

    public init(
                rateInRequestsPerSecond: Int? = nil,
                rateKey: RateLimitingPolicyRateKeyEnum
    ) {
        self.rateInRequestsPerSecond = rateInRequestsPerSecond
        self.rateKey = rateKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RateLimitingPolicy: CustomStringConvertible {
    public var description: String { "RateLimitingPolicy()" }
}