import Foundation
import OCICommon

// MARK: - Saml2IdentityProvider

public struct Saml2IdentityProvider: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var productType: String?
    public var timeCreated: Date?
    public var metadataUrl: String?
    public var signingCertificate: String?
    public var redirectUrl: String?
    public var inactiveStatus: Int64?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var metadata: String?
    public var freeformAttributes: [String: String]?
    public var lifecycleState: IdentityProviderLifecycleStateEnum

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, productType, timeCreated, metadataUrl, signingCertificate, redirectUrl, inactiveStatus, freeformTags, definedTags, metadata, freeformAttributes, lifecycleState
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                productType: String? = nil,
                timeCreated: Date? = nil,
                metadataUrl: String? = nil,
                signingCertificate: String? = nil,
                redirectUrl: String? = nil,
                inactiveStatus: Int64? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                metadata: String? = nil,
                freeformAttributes: [String: String]? = nil,
                lifecycleState: IdentityProviderLifecycleStateEnum
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.productType = productType
        self.timeCreated = timeCreated
        self.metadataUrl = metadataUrl
        self.signingCertificate = signingCertificate
        self.redirectUrl = redirectUrl
        self.inactiveStatus = inactiveStatus
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.metadata = metadata
        self.freeformAttributes = freeformAttributes
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
