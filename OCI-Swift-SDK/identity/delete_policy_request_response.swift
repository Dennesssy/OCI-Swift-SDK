import Foundation

// MARK: - DeletePolicyRequest

public struct DeletePolicyRequest: Codable, Sendable {
    public var policyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case policyId, ifMatch, opcRequestId
    }

    public init(
                policyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.policyId = policyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePolicyRequest: CustomStringConvertible {
    public var description: String { "DeletePolicyRequest()" }
}

// MARK: - DeletePolicyResponse

public struct DeletePolicyResponse: Codable, Sendable {
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

extension DeletePolicyResponse: CustomStringConvertible {
    public var description: String { "DeletePolicyResponse()" }
}