import Foundation
import OCICommon

// MARK: - CreateFunctionDeployEnvironmentDetails

public struct CreateFunctionDeployEnvironmentDetails: Codable, Sendable {

    public var projectId: String?
    public var functionId: String?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case projectId, functionId, description, displayName, freeformTags, definedTags, securityAttributes
    }

    public init(
                projectId: String? = nil,
                functionId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil
    ) {
        self.projectId = projectId
        self.functionId = functionId
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
