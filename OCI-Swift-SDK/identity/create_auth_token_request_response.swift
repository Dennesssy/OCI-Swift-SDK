import Foundation

// MARK: - CreateAuthTokenRequest

public struct CreateAuthTokenRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?
    public var createAuthTokenDetails: CreateAuthTokenDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId, createAuthTokenDetails, opcRetryToken
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil,
                createAuthTokenDetails: CreateAuthTokenDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
        self.createAuthTokenDetails = createAuthTokenDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAuthTokenRequest: CustomStringConvertible {
    public var description: String { "CreateAuthTokenRequest()" }
}

// MARK: - CreateAuthTokenResponse

public struct CreateAuthTokenResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var authToken: AuthToken?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, authToken
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                authToken: AuthToken? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.authToken = authToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAuthTokenResponse: CustomStringConvertible {
    public var description: String { "CreateAuthTokenResponse()" }
}