import Foundation

// MARK: - TriggerDryRunResult

public struct TriggerDryRunResult: Codable, Sendable {

    public var deploymentId: String?

    private enum CodingKeys: String, CodingKey {
        case deploymentId
    }

    public init(
                deploymentId: String? = nil
    ) {
        self.deploymentId = deploymentId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TriggerDryRunResult: CustomStringConvertible {
    public var description: String { "TriggerDryRunResult()" }
}