import Foundation

// MARK: - UpdateAuthenticationPolicyRequest

public struct UpdateAuthenticationPolicyRequest: Codable, Sendable {
    public var compartmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateAuthenticationPolicyDetails: UpdateAuthenticationPolicyDetails?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, ifMatch, opcRequestId, updateAuthenticationPolicyDetails
    }

    public init(
                compartmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateAuthenticationPolicyDetails: UpdateAuthenticationPolicyDetails? = nil
    ) {
        self.compartmentId = compartmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateAuthenticationPolicyDetails = updateAuthenticationPolicyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAuthenticationPolicyRequest: CustomStringConvertible {
    public var description: String { "UpdateAuthenticationPolicyRequest()" }
}

// MARK: - UpdateAuthenticationPolicyResponse

public struct UpdateAuthenticationPolicyResponse: Codable, Sendable {
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

extension UpdateAuthenticationPolicyResponse: CustomStringConvertible {
    public var description: String { "UpdateAuthenticationPolicyResponse()" }
}