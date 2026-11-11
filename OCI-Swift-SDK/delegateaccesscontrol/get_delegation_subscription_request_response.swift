import Foundation

// MARK: - GetDelegationSubscriptionRequest

public struct GetDelegationSubscriptionRequest: Codable, Sendable {
    public var delegationSubscriptionId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case delegationSubscriptionId, opcRequestId
    }

    public init(
                delegationSubscriptionId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.delegationSubscriptionId = delegationSubscriptionId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDelegationSubscriptionRequest: CustomStringConvertible {
    public var description: String { "GetDelegationSubscriptionRequest()" }
}

// MARK: - GetDelegationSubscriptionResponse

public struct GetDelegationSubscriptionResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var delegationSubscription: DelegationSubscription?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, delegationSubscription
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                delegationSubscription: DelegationSubscription? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.delegationSubscription = delegationSubscription
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDelegationSubscriptionResponse: CustomStringConvertible {
    public var description: String { "GetDelegationSubscriptionResponse()" }
}