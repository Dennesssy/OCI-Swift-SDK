import Foundation

// MARK: - GetPolicyRequest

public struct GetPolicyRequest: Codable, Sendable {
    public var policyId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case policyId, opcRequestId
    }

    public init(
                policyId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.policyId = policyId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPolicyRequest: CustomStringConvertible {
    public var description: String { "GetPolicyRequest()" }
}

// MARK: - GetPolicyResponse

public struct GetPolicyResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var policy: Policy?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, policy
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                policy: Policy? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.policy = policy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPolicyResponse: CustomStringConvertible {
    public var description: String { "GetPolicyResponse()" }
}