import Foundation

// MARK: - ComputeInstanceGroupLinearRolloutPolicyByPercentage

public struct ComputeInstanceGroupLinearRolloutPolicyByPercentage: Codable, Sendable {

    public var batchPercentage: Int?
    public var batchDelayInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case batchPercentage, batchDelayInSeconds
    }

    public init(
                batchPercentage: Int? = nil,
                batchDelayInSeconds: Int? = nil
    ) {
        self.batchPercentage = batchPercentage
        self.batchDelayInSeconds = batchDelayInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ComputeInstanceGroupLinearRolloutPolicyByPercentage: CustomStringConvertible {
    public var description: String { "ComputeInstanceGroupLinearRolloutPolicyByPercentage()" }
}