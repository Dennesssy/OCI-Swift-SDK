import Foundation

// MARK: - CreateDbCredentialRequest

public struct CreateDbCredentialRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?
    public var createDbCredentialDetails: CreateDbCredentialDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId, createDbCredentialDetails, opcRetryToken
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil,
                createDbCredentialDetails: CreateDbCredentialDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
        self.createDbCredentialDetails = createDbCredentialDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDbCredentialRequest: CustomStringConvertible {
    public var description: String { "CreateDbCredentialRequest()" }
}

// MARK: - CreateDbCredentialResponse

public struct CreateDbCredentialResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var dbCredential: DbCredential?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, dbCredential
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                dbCredential: DbCredential? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.dbCredential = dbCredential
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDbCredentialResponse: CustomStringConvertible {
    public var description: String { "CreateDbCredentialResponse()" }
}