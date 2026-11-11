import Foundation

// MARK: - DeployPipelineArtifactCollection

public struct DeployPipelineArtifactCollection: Codable, Sendable {

    public var items: [DeployPipelineArtifact]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeployPipelineArtifact]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineArtifactCollection: CustomStringConvertible {
    public var description: String { "DeployPipelineArtifactCollection()" }
}