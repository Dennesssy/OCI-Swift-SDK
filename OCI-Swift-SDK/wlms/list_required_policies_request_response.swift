import Foundation

// MARK: - ListRequiredPoliciesRequest

public struct ListRequiredPoliciesRequest: Codable, Sendable {
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

extension ListRequiredPoliciesRequest: CustomStringConvertible {
    public var description: String { "ListRequiredPoliciesRequest()" }
}

// MARK: - ListRequiredPoliciesResponse

public struct ListRequiredPoliciesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var requiredPolicyCollection: RequiredPolicyCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, requiredPolicyCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                requiredPolicyCollection: RequiredPolicyCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.requiredPolicyCollection = requiredPolicyCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRequiredPoliciesResponse: CustomStringConvertible {
    public var description: String { "ListRequiredPoliciesResponse()" }
}