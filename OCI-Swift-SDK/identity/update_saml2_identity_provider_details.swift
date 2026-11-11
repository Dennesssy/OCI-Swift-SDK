import Foundation
import OCICommon

// MARK: - UpdateSaml2IdentityProviderDetails

public struct UpdateSaml2IdentityProviderDetails: Codable, Sendable {

    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var metadataUrl: String?
    public var metadata: String?
    public var freeformAttributes: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case description, freeformTags, definedTags, metadataUrl, metadata, freeformAttributes
    }

    public init(
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                metadataUrl: String? = nil,
                metadata: String? = nil,
                freeformAttributes: [String: String]? = nil
    ) {
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.metadataUrl = metadataUrl
        self.metadata = metadata
        self.freeformAttributes = freeformAttributes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
