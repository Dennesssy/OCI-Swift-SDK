import Foundation
import OCICommon

// MARK: - CreateIdentityProviderRequest

public struct CreateIdentityProviderRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createIdentityProviderDetails: JSONValue?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createIdentityProviderDetails, opcRetryToken
    }

    public init(
                opcRequestId: String? = nil,
                createIdentityProviderDetails: JSONValue? = nil,
                opcRetryToken: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createIdentityProviderDetails = createIdentityProviderDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIdentityProviderRequest: CustomStringConvertible {
    public var description: String { "CreateIdentityProviderRequest()" }
}

// MARK: - CreateIdentityProviderResponse

public struct CreateIdentityProviderResponse: Codable, Sendable {
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

extension CreateIdentityProviderResponse: CustomStringConvertible {
    public var description: String { "CreateIdentityProviderResponse()" }
}