import Foundation
import OCICommon

// MARK: - CreateOkeCanaryDeployStageDetails

public struct CreateOkeCanaryDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var okeClusterDeployEnvironmentId: String?
    public var kubernetesManifestDeployArtifactIds: [String]
    public var canaryStrategy: JSONValue
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, okeClusterDeployEnvironmentId, kubernetesManifestDeployArtifactIds, canaryStrategy, description, displayName, freeformTags, definedTags
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                okeClusterDeployEnvironmentId: String? = nil,
                kubernetesManifestDeployArtifactIds: [String],
                canaryStrategy: JSONValue,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.okeClusterDeployEnvironmentId = okeClusterDeployEnvironmentId
        self.kubernetesManifestDeployArtifactIds = kubernetesManifestDeployArtifactIds
        self.canaryStrategy = canaryStrategy
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
