import Foundation
import OCICommon

// MARK: - CreateSaml2IdentityProviderDetails

public struct CreateSaml2IdentityProviderDetails: Codable, Sendable {

    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var metadataUrl: String?
    public var metadata: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformAttributes: [String: String]?
    public var productType: CreateIdentityProviderDetailsProductTypeEnum

    private enum CodingKeys: String, CodingKey {
        case compartmentId, name, description, metadataUrl, metadata, freeformTags, definedTags, freeformAttributes, productType
    }

    public init(
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                metadataUrl: String? = nil,
                metadata: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformAttributes: [String: String]? = nil,
                productType: CreateIdentityProviderDetailsProductTypeEnum
    ) {
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.metadataUrl = metadataUrl
        self.metadata = metadata
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.freeformAttributes = freeformAttributes
        self.productType = productType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
