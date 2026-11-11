import Foundation
import OCICommon

// MARK: - CreateBuildPipelineDetails

public struct CreateBuildPipelineDetails: Codable, Sendable {

    public var projectId: String?
    public var description: String?
    public var displayName: String?
    public var buildPipelineParameters: BuildPipelineParameterCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case projectId, description, displayName, buildPipelineParameters, freeformTags, definedTags
    }

    public init(
                projectId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                buildPipelineParameters: BuildPipelineParameterCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.projectId = projectId
        self.description = description
        self.displayName = displayName
        self.buildPipelineParameters = buildPipelineParameters
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
