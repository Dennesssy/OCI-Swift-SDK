import Foundation
import OCICommon

// MARK: - CreateDeployPipelineDeploymentDetails

public struct CreateDeployPipelineDeploymentDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deploymentArguments: DeploymentArgumentCollection?
    public var deployStageOverrideArguments: DeployStageOverrideArgumentCollection?
    public var deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, displayName, freeformTags, definedTags, deploymentArguments, deployStageOverrideArguments, deployArtifactOverrideArguments
    }

    public init(
                deployPipelineId: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deploymentArguments: DeploymentArgumentCollection? = nil,
                deployStageOverrideArguments: DeployStageOverrideArgumentCollection? = nil,
                deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deploymentArguments = deploymentArguments
        self.deployStageOverrideArguments = deployStageOverrideArguments
        self.deployArtifactOverrideArguments = deployArtifactOverrideArguments
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeployPipelineDeploymentDetails: CustomStringConvertible {
    public var description: String { "CreateDeployPipelineDeploymentDetails()" }
}