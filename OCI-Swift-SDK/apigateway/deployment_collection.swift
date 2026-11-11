import Foundation

// MARK: - DeploymentCollection

public struct DeploymentCollection: Codable, Sendable {

    public var items: [DeploymentSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeploymentSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeploymentCollection: CustomStringConvertible {
    public var description: String { "DeploymentCollection()" }
}