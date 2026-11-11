import Foundation
import OCICommon

// MARK: - CreateGitlabServerAccessTokenConnectionDetails

public struct CreateGitlabServerAccessTokenConnectionDetails: Codable, Sendable {

    public var projectId: String?
    public var accessToken: String?
    public var baseUrl: String?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var tlsVerifyConfig: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case projectId, accessToken, baseUrl, description, displayName, freeformTags, definedTags, tlsVerifyConfig
    }

    public init(
                projectId: String? = nil,
                accessToken: String? = nil,
                baseUrl: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                tlsVerifyConfig: JSONValue? = nil
    ) {
        self.projectId = projectId
        self.accessToken = accessToken
        self.baseUrl = baseUrl
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.tlsVerifyConfig = tlsVerifyConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
