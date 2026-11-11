import Foundation
import OCICommon

// MARK: - UpdateDeployArtifactDetails

public struct UpdateDeployArtifactDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployArtifactType: DeployArtifactDeployArtifactTypeEnum?
    public var deployArtifactSource: JSONValue?
    public var argumentSubstitutionMode: DeployArtifactArgumentSubstitutionModeEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployArtifactType, deployArtifactSource, argumentSubstitutionMode, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployArtifactType: DeployArtifactDeployArtifactTypeEnum? = nil,
                deployArtifactSource: JSONValue? = nil,
                argumentSubstitutionMode: DeployArtifactArgumentSubstitutionModeEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployArtifactType = deployArtifactType
        self.deployArtifactSource = deployArtifactSource
        self.argumentSubstitutionMode = argumentSubstitutionMode
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
