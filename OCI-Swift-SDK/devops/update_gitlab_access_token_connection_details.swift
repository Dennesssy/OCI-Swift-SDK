import Foundation
import OCICommon

// MARK: - UpdateGitlabAccessTokenConnectionDetails

public struct UpdateGitlabAccessTokenConnectionDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var accessToken: String?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, freeformTags, definedTags, accessToken
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                accessToken: String? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.accessToken = accessToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
