import Foundation

// MARK: - CreatePolicyRequest

public struct CreatePolicyRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createPolicyDetails: CreatePolicyDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createPolicyDetails
    }

    public init(
                opcRequestId: String? = nil,
                createPolicyDetails: CreatePolicyDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createPolicyDetails = createPolicyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePolicyRequest: CustomStringConvertible {
    public var description: String { "CreatePolicyRequest()" }
}

// MARK: - CreatePolicyResponse

public struct CreatePolicyResponse: Codable, Sendable {
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

extension CreatePolicyResponse: CustomStringConvertible {
    public var description: String { "CreatePolicyResponse()" }
}