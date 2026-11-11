import Foundation
import OCICommon

// MARK: - UpdateDeployPipelineDetails

public struct UpdateDeployPipelineDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployPipelineParameters: DeployPipelineParameterCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployPipelineParameters, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployPipelineParameters: DeployPipelineParameterCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployPipelineParameters = deployPipelineParameters
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
