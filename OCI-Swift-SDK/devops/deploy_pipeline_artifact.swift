import Foundation

// MARK: - DeployPipelineArtifact

public struct DeployPipelineArtifact: Codable, Sendable {

    public var deployArtifactId: String?
    public var deployPipelineStages: DeployPipelineStageCollection?
    public var displayName: String?

    private enum CodingKeys: String, CodingKey {
        case deployArtifactId, deployPipelineStages, displayName
    }

    public init(
                deployArtifactId: String? = nil,
                deployPipelineStages: DeployPipelineStageCollection? = nil,
                displayName: String? = nil
    ) {
        self.deployArtifactId = deployArtifactId
        self.deployPipelineStages = deployPipelineStages
        self.displayName = displayName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineArtifact: CustomStringConvertible {
    public var description: String { "DeployPipelineArtifact()" }
}