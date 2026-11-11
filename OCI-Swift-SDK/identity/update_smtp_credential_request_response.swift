import Foundation

// MARK: - UpdateSmtpCredentialRequest

public struct UpdateSmtpCredentialRequest: Codable, Sendable {
    public var userId: String?
    public var smtpCredentialId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateSmtpCredentialDetails: UpdateSmtpCredentialDetails?

    private enum CodingKeys: String, CodingKey {
        case userId, smtpCredentialId, ifMatch, opcRequestId, updateSmtpCredentialDetails
    }

    public init(
                userId: String? = nil,
                smtpCredentialId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateSmtpCredentialDetails: UpdateSmtpCredentialDetails? = nil
    ) {
        self.userId = userId
        self.smtpCredentialId = smtpCredentialId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateSmtpCredentialDetails = updateSmtpCredentialDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSmtpCredentialRequest: CustomStringConvertible {
    public var description: String { "UpdateSmtpCredentialRequest()" }
}

// MARK: - UpdateSmtpCredentialResponse

public struct UpdateSmtpCredentialResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var smtpCredentialSummary: SmtpCredentialSummary?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, smtpCredentialSummary
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                smtpCredentialSummary: SmtpCredentialSummary? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.smtpCredentialSummary = smtpCredentialSummary
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSmtpCredentialResponse: CustomStringConvertible {
    public var description: String { "UpdateSmtpCredentialResponse()" }
}