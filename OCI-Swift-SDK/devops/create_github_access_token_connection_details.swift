import Foundation
import OCICommon

// MARK: - CreateGithubAccessTokenConnectionDetails

public struct CreateGithubAccessTokenConnectionDetails: Codable, Sendable {

    public var projectId: String?
    public var accessToken: String?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case projectId, accessToken, description, displayName, freeformTags, definedTags
    }

    public init(
                projectId: String? = nil,
                accessToken: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.projectId = projectId
        self.accessToken = accessToken
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
