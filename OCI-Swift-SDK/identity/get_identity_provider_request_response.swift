import Foundation
import OCICommon

// MARK: - GetIdentityProviderRequest

public struct GetIdentityProviderRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, opcRequestId
    }

    public init(
                identityProviderId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIdentityProviderRequest: CustomStringConvertible {
    public var description: String { "GetIdentityProviderRequest()" }
}

// MARK: - GetIdentityProviderResponse

public struct GetIdentityProviderResponse: Codable, Sendable {
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

extension GetIdentityProviderResponse: CustomStringConvertible {
    public var description: String { "GetIdentityProviderResponse()" }
}