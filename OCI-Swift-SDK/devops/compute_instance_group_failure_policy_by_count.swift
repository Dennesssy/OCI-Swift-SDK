import Foundation

// MARK: - ComputeInstanceGroupFailurePolicyByCount

public struct ComputeInstanceGroupFailurePolicyByCount: Codable, Sendable {

    public var failureCount: Int?

    private enum CodingKeys: String, CodingKey {
        case failureCount
    }

    public init(
                failureCount: Int? = nil
    ) {
        self.failureCount = failureCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ComputeInstanceGroupFailurePolicyByCount: CustomStringConvertible {
    public var description: String { "ComputeInstanceGroupFailurePolicyByCount()" }
}