import Foundation

// MARK: - UpdateOAuthClientCredentialRequest

public struct UpdateOAuthClientCredentialRequest: Codable, Sendable {
    public var userId: String?
    public var oauth2ClientCredentialId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOAuth2ClientCredentialDetails: UpdateOAuth2ClientCredentialDetails?

    private enum CodingKeys: String, CodingKey {
        case userId, oauth2ClientCredentialId, ifMatch, opcRequestId, updateOAuth2ClientCredentialDetails
    }

    public init(
                userId: String? = nil,
                oauth2ClientCredentialId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOAuth2ClientCredentialDetails: UpdateOAuth2ClientCredentialDetails? = nil
    ) {
        self.userId = userId
        self.oauth2ClientCredentialId = oauth2ClientCredentialId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOAuth2ClientCredentialDetails = updateOAuth2ClientCredentialDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOAuthClientCredentialRequest: CustomStringConvertible {
    public var description: String { "UpdateOAuthClientCredentialRequest()" }
}

// MARK: - UpdateOAuthClientCredentialResponse

public struct UpdateOAuthClientCredentialResponse: Codable, Sendable {
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

extension UpdateOAuthClientCredentialResponse: CustomStringConvertible {
    public var description: String { "UpdateOAuthClientCredentialResponse()" }
}