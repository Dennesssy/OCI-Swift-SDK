import Foundation
import OCICommon

// MARK: - UpdateBitbucketCloudAppPasswordConnectionDetails

public struct UpdateBitbucketCloudAppPasswordConnectionDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var username: String?
    public var appPassword: String?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, freeformTags, definedTags, username, appPassword
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                username: String? = nil,
                appPassword: String? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.username = username
        self.appPassword = appPassword
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
