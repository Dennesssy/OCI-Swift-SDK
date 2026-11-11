import Foundation

// MARK: - DeleteDelegationSubscriptionRequest

public struct DeleteDelegationSubscriptionRequest: Codable, Sendable {
    public var delegationSubscriptionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case delegationSubscriptionId, ifMatch, opcRequestId
    }

    public init(
                delegationSubscriptionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.delegationSubscriptionId = delegationSubscriptionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDelegationSubscriptionRequest: CustomStringConvertible {
    public var description: String { "DeleteDelegationSubscriptionRequest()" }
}

// MARK: - DeleteDelegationSubscriptionResponse

public struct DeleteDelegationSubscriptionResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDelegationSubscriptionResponse: CustomStringConvertible {
    public var description: String { "DeleteDelegationSubscriptionResponse()" }
}