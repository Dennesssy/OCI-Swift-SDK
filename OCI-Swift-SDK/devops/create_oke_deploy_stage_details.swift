import Foundation
import OCICommon

// MARK: - CreateOkeDeployStageDetails

public struct CreateOkeDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var okeClusterDeployEnvironmentId: String?
    public var kubernetesManifestDeployArtifactIds: [String]
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var namespace: String?
    public var rollbackPolicy: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, okeClusterDeployEnvironmentId, kubernetesManifestDeployArtifactIds, description, displayName, freeformTags, definedTags, namespace, rollbackPolicy
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                okeClusterDeployEnvironmentId: String? = nil,
                kubernetesManifestDeployArtifactIds: [String],
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                namespace: String? = nil,
                rollbackPolicy: JSONValue? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.okeClusterDeployEnvironmentId = okeClusterDeployEnvironmentId
        self.kubernetesManifestDeployArtifactIds = kubernetesManifestDeployArtifactIds
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.namespace = namespace
        self.rollbackPolicy = rollbackPolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
