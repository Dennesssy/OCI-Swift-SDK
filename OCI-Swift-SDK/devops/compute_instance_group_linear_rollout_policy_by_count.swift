import Foundation

// MARK: - ComputeInstanceGroupLinearRolloutPolicyByCount

public struct ComputeInstanceGroupLinearRolloutPolicyByCount: Codable, Sendable {

    public var batchCount: Int?
    public var batchDelayInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case batchCount, batchDelayInSeconds
    }

    public init(
                batchCount: Int? = nil,
                batchDelayInSeconds: Int? = nil
    ) {
        self.batchCount = batchCount
        self.batchDelayInSeconds = batchDelayInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ComputeInstanceGroupLinearRolloutPolicyByCount: CustomStringConvertible {
    public var description: String { "ComputeInstanceGroupLinearRolloutPolicyByCount()" }
}