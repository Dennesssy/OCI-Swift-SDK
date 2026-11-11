import Foundation

// MARK: - LoadBalancerTrafficShiftRolloutPolicy

public struct LoadBalancerTrafficShiftRolloutPolicy: Codable, Sendable {

    public var batchCount: Int?
    public var batchDelayInSeconds: Int?
    public var rampLimitPercent: Float?

    private enum CodingKeys: String, CodingKey {
        case batchCount, batchDelayInSeconds, rampLimitPercent
    }

    public init(
                batchCount: Int? = nil,
                batchDelayInSeconds: Int? = nil,
                rampLimitPercent: Float? = nil
    ) {
        self.batchCount = batchCount
        self.batchDelayInSeconds = batchDelayInSeconds
        self.rampLimitPercent = rampLimitPercent
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LoadBalancerTrafficShiftRolloutPolicy: CustomStringConvertible {
    public var description: String { "LoadBalancerTrafficShiftRolloutPolicy()" }
}