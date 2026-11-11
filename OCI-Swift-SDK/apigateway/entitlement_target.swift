import Foundation

// MARK: - EntitlementTarget

public struct EntitlementTarget: Codable, Sendable {

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

extension EntitlementTarget: CustomStringConvertible {
    public var description: String { "EntitlementTarget()" }
}