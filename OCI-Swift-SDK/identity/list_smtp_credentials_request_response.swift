import Foundation

// MARK: - ListSmtpCredentialsRequest

public struct ListSmtpCredentialsRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSmtpCredentialsRequest: CustomStringConvertible {
    public var description: String { "ListSmtpCredentialsRequest()" }
}

// MARK: - ListSmtpCredentialsResponse

public struct ListSmtpCredentialsResponse: Codable, Sendable {
    public var items: [SmtpCredentialSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [SmtpCredentialSummary]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSmtpCredentialsResponse: CustomStringConvertible {
    public var description: String { "ListSmtpCredentialsResponse()" }
}