import Foundation

// MARK: - UpdatePolicyRequest

public struct UpdatePolicyRequest: Codable, Sendable {
    public var policyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updatePolicyDetails: UpdatePolicyDetails?

    private enum CodingKeys: String, CodingKey {
        case policyId, ifMatch, opcRequestId, updatePolicyDetails
    }

    public init(
                policyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updatePolicyDetails: UpdatePolicyDetails? = nil
    ) {
        self.policyId = policyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updatePolicyDetails = updatePolicyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePolicyRequest: CustomStringConvertible {
    public var description: String { "UpdatePolicyRequest()" }
}

// MARK: - UpdatePolicyResponse

public struct UpdatePolicyResponse: Codable, Sendable {
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

extension UpdatePolicyResponse: CustomStringConvertible {
    public var description: String { "UpdatePolicyResponse()" }
}