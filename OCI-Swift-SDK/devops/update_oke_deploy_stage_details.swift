import Foundation
import OCICommon

// MARK: - UpdateOkeDeployStageDetails

public struct UpdateOkeDeployStageDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var okeClusterDeployEnvironmentId: String?
    public var kubernetesManifestDeployArtifactIds: [String]?
    public var namespace: String?
    public var rollbackPolicy: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, okeClusterDeployEnvironmentId, kubernetesManifestDeployArtifactIds, namespace, rollbackPolicy
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                okeClusterDeployEnvironmentId: String? = nil,
                kubernetesManifestDeployArtifactIds: [String]? = nil,
                namespace: String? = nil,
                rollbackPolicy: JSONValue? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.okeClusterDeployEnvironmentId = okeClusterDeployEnvironmentId
        self.kubernetesManifestDeployArtifactIds = kubernetesManifestDeployArtifactIds
        self.namespace = namespace
        self.rollbackPolicy = rollbackPolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
