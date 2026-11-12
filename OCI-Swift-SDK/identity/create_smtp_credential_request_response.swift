import Foundation

// MARK: - CreateSmtpCredentialRequest

public struct CreateSmtpCredentialRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?
    public var createSmtpCredentialDetails: CreateSmtpCredentialDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId, createSmtpCredentialDetails, opcRetryToken
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil,
                createSmtpCredentialDetails: CreateSmtpCredentialDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
        self.createSmtpCredentialDetails = createSmtpCredentialDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSmtpCredentialRequest: CustomStringConvertible {
    public var description: String { "CreateSmtpCredentialRequest()" }
}

// MARK: - CreateSmtpCredentialResponse

public struct CreateSmtpCredentialResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var smtpCredential: SmtpCredential?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, smtpCredential
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                smtpCredential: SmtpCredential? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.smtpCredential = smtpCredential
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSmtpCredentialResponse: CustomStringConvertible {
    public var description: String { "CreateSmtpCredentialResponse()" }
}