import Foundation

// MARK: - UpdateAuthTokenRequest

public struct UpdateAuthTokenRequest: Codable, Sendable {
    public var userId: String?
    public var authTokenId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateAuthTokenDetails: UpdateAuthTokenDetails?

    private enum CodingKeys: String, CodingKey {
        case userId, authTokenId, ifMatch, opcRequestId, updateAuthTokenDetails
    }

    public init(
                userId: String? = nil,
                authTokenId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateAuthTokenDetails: UpdateAuthTokenDetails? = nil
    ) {
        self.userId = userId
        self.authTokenId = authTokenId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateAuthTokenDetails = updateAuthTokenDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAuthTokenRequest: CustomStringConvertible {
    public var description: String { "UpdateAuthTokenRequest()" }
}

// MARK: - UpdateAuthTokenResponse

public struct UpdateAuthTokenResponse: Codable, Sendable {
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

extension UpdateAuthTokenResponse: CustomStringConvertible {
    public var description: String { "UpdateAuthTokenResponse()" }
}