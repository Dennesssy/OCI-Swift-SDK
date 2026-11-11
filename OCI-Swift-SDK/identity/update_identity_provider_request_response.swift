import Foundation
import OCICommon

// MARK: - UpdateIdentityProviderRequest

public struct UpdateIdentityProviderRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateIdentityProviderDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, ifMatch, opcRequestId, updateIdentityProviderDetails
    }

    public init(
                identityProviderId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateIdentityProviderDetails: JSONValue? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateIdentityProviderDetails = updateIdentityProviderDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateIdentityProviderRequest: CustomStringConvertible {
    public var description: String { "UpdateIdentityProviderRequest()" }
}

// MARK: - UpdateIdentityProviderResponse

public struct UpdateIdentityProviderResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var identityProvider: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, identityProvider
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                identityProvider: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.identityProvider = identityProvider
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateIdentityProviderResponse: CustomStringConvertible {
    public var description: String { "UpdateIdentityProviderResponse()" }
}