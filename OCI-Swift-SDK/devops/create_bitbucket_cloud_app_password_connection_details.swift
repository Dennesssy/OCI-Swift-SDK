import Foundation
import OCICommon

// MARK: - CreateBitbucketCloudAppPasswordConnectionDetails

public struct CreateBitbucketCloudAppPasswordConnectionDetails: Codable, Sendable {

    public var projectId: String?
    public var username: String?
    public var appPassword: String?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case projectId, username, appPassword, description, displayName, freeformTags, definedTags
    }

    public init(
                projectId: String? = nil,
                username: String? = nil,
                appPassword: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.projectId = projectId
        self.username = username
        self.appPassword = appPassword
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
