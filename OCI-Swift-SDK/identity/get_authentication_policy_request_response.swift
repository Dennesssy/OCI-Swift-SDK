import Foundation

// MARK: - GetAuthenticationPolicyRequest

public struct GetAuthenticationPolicyRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAuthenticationPolicyRequest: CustomStringConvertible {
    public var description: String { "GetAuthenticationPolicyRequest()" }
}

// MARK: - GetAuthenticationPolicyResponse

public struct GetAuthenticationPolicyResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var authenticationPolicy: AuthenticationPolicy?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, authenticationPolicy
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                authenticationPolicy: AuthenticationPolicy? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.authenticationPolicy = authenticationPolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAuthenticationPolicyResponse: CustomStringConvertible {
    public var description: String { "GetAuthenticationPolicyResponse()" }
}