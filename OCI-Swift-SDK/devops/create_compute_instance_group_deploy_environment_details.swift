import Foundation
import OCICommon

// MARK: - CreateComputeInstanceGroupDeployEnvironmentDetails

public struct CreateComputeInstanceGroupDeployEnvironmentDetails: Codable, Sendable {

    public var projectId: String?
    public var computeInstanceGroupSelectors: ComputeInstanceGroupSelectorCollection?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case projectId, computeInstanceGroupSelectors, description, displayName, freeformTags, definedTags, securityAttributes
    }

    public init(
                projectId: String? = nil,
                computeInstanceGroupSelectors: ComputeInstanceGroupSelectorCollection? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil
    ) {
        self.projectId = projectId
        self.computeInstanceGroupSelectors = computeInstanceGroupSelectors
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.securityAttributes = securityAttributes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
