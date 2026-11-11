import Foundation

// MARK: - DeleteIdentityProviderRequest

public struct DeleteIdentityProviderRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, ifMatch, opcRequestId
    }

    public init(
                identityProviderId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteIdentityProviderRequest: CustomStringConvertible {
    public var description: String { "DeleteIdentityProviderRequest()" }
}

// MARK: - DeleteIdentityProviderResponse

public struct DeleteIdentityProviderResponse: Codable, Sendable {
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

extension DeleteIdentityProviderResponse: CustomStringConvertible {
    public var description: String { "DeleteIdentityProviderResponse()" }
}