import Foundation

// MARK: - GetAccessTokenRequest

public struct GetAccessTokenRequest: Codable, Sendable {
    public var service: String?
    public var scope: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case service, scope, opcRequestId
    }

    public init(
                service: String? = nil,
                scope: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.service = service
        self.scope = scope
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAccessTokenRequest: CustomStringConvertible {
    public var description: String { "GetAccessTokenRequest()" }
}

// MARK: - GetAccessTokenResponse

public struct GetAccessTokenResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var accessToken: AccessToken?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, accessToken
    }

    public init(
                opcRequestId: String? = nil,
                accessToken: AccessToken? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.accessToken = accessToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAccessTokenResponse: CustomStringConvertible {
    public var description: String { "GetAccessTokenResponse()" }
}