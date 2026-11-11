import Foundation
import OCICommon

// MARK: - CreateDeployPipelineRedeploymentDetails

public struct CreateDeployPipelineRedeploymentDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var previousDeploymentId: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, previousDeploymentId, displayName, freeformTags, definedTags
    }

    public init(
                deployPipelineId: String? = nil,
                previousDeploymentId: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.previousDeploymentId = previousDeploymentId
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeployPipelineRedeploymentDetails: CustomStringConvertible {
    public var description: String { "CreateDeployPipelineRedeploymentDetails()" }
}