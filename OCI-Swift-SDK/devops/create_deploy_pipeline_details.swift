import Foundation
import OCICommon

// MARK: - CreateDeployPipelineDetails

public struct CreateDeployPipelineDetails: Codable, Sendable {

    public var projectId: String?
    public var description: String?
    public var displayName: String?
    public var deployPipelineParameters: DeployPipelineParameterCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case projectId, description, displayName, deployPipelineParameters, freeformTags, definedTags
    }

    public init(
                projectId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                deployPipelineParameters: DeployPipelineParameterCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.projectId = projectId
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
