import Foundation

// MARK: - DeleteAuthTokenRequest

public struct DeleteAuthTokenRequest: Codable, Sendable {
    public var userId: String?
    public var authTokenId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, authTokenId, ifMatch, opcRequestId
    }

    public init(
                userId: String? = nil,
                authTokenId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.authTokenId = authTokenId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteAuthTokenRequest: CustomStringConvertible {
    public var description: String { "DeleteAuthTokenRequest()" }
}

// MARK: - DeleteAuthTokenResponse

public struct DeleteAuthTokenResponse: Codable, Sendable {
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

extension DeleteAuthTokenResponse: CustomStringConvertible {
    public var description: String { "DeleteAuthTokenResponse()" }
}