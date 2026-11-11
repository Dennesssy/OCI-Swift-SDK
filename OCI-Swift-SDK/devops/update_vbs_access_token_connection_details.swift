import Foundation
import OCICommon

// MARK: - UpdateVbsAccessTokenConnectionDetails

public struct UpdateVbsAccessTokenConnectionDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var accessToken: String?
    public var baseUrl: String?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, freeformTags, definedTags, accessToken, baseUrl
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                accessToken: String? = nil,
                baseUrl: String? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.accessToken = accessToken
        self.baseUrl = baseUrl
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
