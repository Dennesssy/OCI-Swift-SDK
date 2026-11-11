import Foundation

// MARK: - DeployArtifactCollection

public struct DeployArtifactCollection: Codable, Sendable {

    public var items: [DeployArtifactSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeployArtifactSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployArtifactCollection: CustomStringConvertible {
    public var description: String { "DeployArtifactCollection()" }
}