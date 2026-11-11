import Foundation

// MARK: - DeleteOAuthClientCredentialRequest

public struct DeleteOAuthClientCredentialRequest: Codable, Sendable {
    public var userId: String?
    public var oauth2ClientCredentialId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, oauth2ClientCredentialId, ifMatch, opcRequestId
    }

    public init(
                userId: String? = nil,
                oauth2ClientCredentialId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.oauth2ClientCredentialId = oauth2ClientCredentialId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOAuthClientCredentialRequest: CustomStringConvertible {
    public var description: String { "DeleteOAuthClientCredentialRequest()" }
}

// MARK: - DeleteOAuthClientCredentialResponse

public struct DeleteOAuthClientCredentialResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOAuthClientCredentialResponse: CustomStringConvertible {
    public var description: String { "DeleteOAuthClientCredentialResponse()" }
}