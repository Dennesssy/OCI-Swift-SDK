import Foundation

// MARK: - DeploymentArgumentCollection

public struct DeploymentArgumentCollection: Codable, Sendable {

    public var items: [DeploymentArgument]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeploymentArgument]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeploymentArgumentCollection: CustomStringConvertible {
    public var description: String { "DeploymentArgumentCollection()" }
}