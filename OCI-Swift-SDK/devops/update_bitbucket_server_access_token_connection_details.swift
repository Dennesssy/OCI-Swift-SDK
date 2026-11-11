import Foundation
import OCICommon

// MARK: - UpdateBitbucketServerAccessTokenConnectionDetails

public struct UpdateBitbucketServerAccessTokenConnectionDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var accessToken: String?
    public var baseUrl: String?
    public var tlsVerifyConfig: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, freeformTags, definedTags, accessToken, baseUrl, tlsVerifyConfig
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                accessToken: String? = nil,
                baseUrl: String? = nil,
                tlsVerifyConfig: JSONValue? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.accessToken = accessToken
        self.baseUrl = baseUrl
        self.tlsVerifyConfig = tlsVerifyConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
