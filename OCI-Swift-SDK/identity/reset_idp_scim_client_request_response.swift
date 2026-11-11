import Foundation

// MARK: - ResetIdpScimClientRequest

public struct ResetIdpScimClientRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, opcRequestId
    }

    public init(
                identityProviderId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResetIdpScimClientRequest: CustomStringConvertible {
    public var description: String { "ResetIdpScimClientRequest()" }
}

// MARK: - ResetIdpScimClientResponse

public struct ResetIdpScimClientResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var scimClientCredentials: ScimClientCredentials?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, scimClientCredentials
    }

    public init(
                opcRequestId: String? = nil,
                scimClientCredentials: ScimClientCredentials? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.scimClientCredentials = scimClientCredentials
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResetIdpScimClientResponse: CustomStringConvertible {
    public var description: String { "ResetIdpScimClientResponse()" }
}