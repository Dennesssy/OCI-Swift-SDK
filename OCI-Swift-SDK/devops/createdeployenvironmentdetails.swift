import Foundation
import OCICommon

// MARK: - createdeployenvironmentdetails

public struct createdeployenvironmentdetails: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var projectId: String?
    public var deployEnvironmentType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, displayName, freeformTags, definedTags, securityAttributes, projectId, deployEnvironmentType
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil,
                projectId: String? = nil,
                deployEnvironmentType: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.securityAttributes = securityAttributes
        self.projectId = projectId
        self.deployEnvironmentType = deployEnvironmentType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
