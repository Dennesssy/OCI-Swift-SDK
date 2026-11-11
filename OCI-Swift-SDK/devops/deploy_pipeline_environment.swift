import Foundation

// MARK: - DeployPipelineEnvironment

public struct DeployPipelineEnvironment: Codable, Sendable {

    public var deployEnvironmentId: String?
    public var deployPipelineStages: DeployPipelineStageCollection?
    public var displayName: String?

    private enum CodingKeys: String, CodingKey {
        case deployEnvironmentId, deployPipelineStages, displayName
    }

    public init(
                deployEnvironmentId: String? = nil,
                deployPipelineStages: DeployPipelineStageCollection? = nil,
                displayName: String? = nil
    ) {
        self.deployEnvironmentId = deployEnvironmentId
        self.deployPipelineStages = deployPipelineStages
        self.displayName = displayName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineEnvironment: CustomStringConvertible {
    public var description: String { "DeployPipelineEnvironment()" }
}