import Foundation

// MARK: - ComputeInstanceGroupFailurePolicyByPercentage

public struct ComputeInstanceGroupFailurePolicyByPercentage: Codable, Sendable {

    public var failurePercentage: Int?

    private enum CodingKeys: String, CodingKey {
        case failurePercentage
    }

    public init(
                failurePercentage: Int? = nil
    ) {
        self.failurePercentage = failurePercentage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ComputeInstanceGroupFailurePolicyByPercentage: CustomStringConvertible {
    public var description: String { "ComputeInstanceGroupFailurePolicyByPercentage()" }
}