import Foundation
import OCICommon

// MARK: - UpdateComputeInstanceGroupDeployEnvironmentDetails

public struct UpdateComputeInstanceGroupDeployEnvironmentDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var computeInstanceGroupSelectors: ComputeInstanceGroupSelectorCollection?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, freeformTags, definedTags, securityAttributes, computeInstanceGroupSelectors
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil,
                computeInstanceGroupSelectors: ComputeInstanceGroupSelectorCollection? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.securityAttributes = securityAttributes
        self.computeInstanceGroupSelectors = computeInstanceGroupSelectors
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
