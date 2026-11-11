import Foundation

// MARK: - CreateOAuthClientCredentialRequest

public struct CreateOAuthClientCredentialRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?
    public var createOAuth2ClientCredentialDetails: CreateOAuth2ClientCredentialDetails?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId, createOAuth2ClientCredentialDetails
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil,
                createOAuth2ClientCredentialDetails: CreateOAuth2ClientCredentialDetails? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
        self.createOAuth2ClientCredentialDetails = createOAuth2ClientCredentialDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOAuthClientCredentialRequest: CustomStringConvertible {
    public var description: String { "CreateOAuthClientCredentialRequest()" }
}

// MARK: - CreateOAuthClientCredentialResponse

public struct CreateOAuthClientCredentialResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var oAuth2ClientCredential: OAuth2ClientCredential?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, oAuth2ClientCredential
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                oAuth2ClientCredential: OAuth2ClientCredential? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.oAuth2ClientCredential = oAuth2ClientCredential
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOAuthClientCredentialResponse: CustomStringConvertible {
    public var description: String { "CreateOAuthClientCredentialResponse()" }
}