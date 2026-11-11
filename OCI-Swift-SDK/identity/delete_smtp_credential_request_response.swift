import Foundation

// MARK: - DeleteSmtpCredentialRequest

public struct DeleteSmtpCredentialRequest: Codable, Sendable {
    public var userId: String?
    public var smtpCredentialId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, smtpCredentialId, ifMatch, opcRequestId
    }

    public init(
                userId: String? = nil,
                smtpCredentialId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.smtpCredentialId = smtpCredentialId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSmtpCredentialRequest: CustomStringConvertible {
    public var description: String { "DeleteSmtpCredentialRequest()" }
}

// MARK: - DeleteSmtpCredentialResponse

public struct DeleteSmtpCredentialResponse: Codable, Sendable {
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

extension DeleteSmtpCredentialResponse: CustomStringConvertible {
    public var description: String { "DeleteSmtpCredentialResponse()" }
}