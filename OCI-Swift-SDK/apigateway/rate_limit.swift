import Foundation

// MARK: - RateLimit

public struct RateLimit: Codable, Sendable {

    public var value: Int?
    public var unit: RateLimitUnitEnum

    private enum CodingKeys: String, CodingKey {
        case value, unit
    }

    public init(
                value: Int? = nil,
                unit: RateLimitUnitEnum
    ) {
        self.value = value
        self.unit = unit
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RateLimit: CustomStringConvertible {
    public var description: String { "RateLimit()" }
}