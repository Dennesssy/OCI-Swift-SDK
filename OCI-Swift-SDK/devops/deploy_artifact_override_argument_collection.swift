import Foundation

// MARK: - DeployArtifactOverrideArgumentCollection

public struct DeployArtifactOverrideArgumentCollection: Codable, Sendable {

    public var items: [DeployArtifactOverrideArgument]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeployArtifactOverrideArgument]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployArtifactOverrideArgumentCollection: CustomStringConvertible {
    public var description: String { "DeployArtifactOverrideArgumentCollection()" }
}