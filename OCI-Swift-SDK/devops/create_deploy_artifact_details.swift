import Foundation
import OCICommon

// MARK: - CreateDeployArtifactDetails

public struct CreateDeployArtifactDetails: Codable, Sendable {

    public var deployArtifactType: DeployArtifactDeployArtifactTypeEnum
    public var deployArtifactSource: JSONValue
    public var argumentSubstitutionMode: DeployArtifactArgumentSubstitutionModeEnum
    public var projectId: String?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case deployArtifactType, deployArtifactSource, argumentSubstitutionMode, projectId, description, displayName, freeformTags, definedTags
    }

    public init(
                deployArtifactType: DeployArtifactDeployArtifactTypeEnum,
                deployArtifactSource: JSONValue,
                argumentSubstitutionMode: DeployArtifactArgumentSubstitutionModeEnum,
                projectId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.deployArtifactType = deployArtifactType
        self.deployArtifactSource = deployArtifactSource
        self.argumentSubstitutionMode = argumentSubstitutionMode
        self.projectId = projectId
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
