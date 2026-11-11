import Foundation

// MARK: - AvailabilityConfiguration

public struct AvailabilityConfiguration: Codable, Sendable {

    public var maxAllowedFailuresPerInterval: Int?
    public var minAllowedRunsPerInterval: Int?

    private enum CodingKeys: String, CodingKey {
        case maxAllowedFailuresPerInterval, minAllowedRunsPerInterval
    }

    public init(
                maxAllowedFailuresPerInterval: Int? = nil,
                minAllowedRunsPerInterval: Int? = nil
    ) {
        self.maxAllowedFailuresPerInterval = maxAllowedFailuresPerInterval
        self.minAllowedRunsPerInterval = minAllowedRunsPerInterval
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AvailabilityConfiguration: CustomStringConvertible {
    public var description: String { "AvailabilityConfiguration()" }
}