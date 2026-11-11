import Foundation

// MARK: - UpdateDelegationSubscriptionRequest

public struct UpdateDelegationSubscriptionRequest: Codable, Sendable {
    public var delegationSubscriptionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDelegationSubscriptionDetails: UpdateDelegationSubscriptionDetails?

    private enum CodingKeys: String, CodingKey {
        case delegationSubscriptionId, ifMatch, opcRequestId, updateDelegationSubscriptionDetails
    }

    public init(
                delegationSubscriptionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDelegationSubscriptionDetails: UpdateDelegationSubscriptionDetails? = nil
    ) {
        self.delegationSubscriptionId = delegationSubscriptionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDelegationSubscriptionDetails = updateDelegationSubscriptionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDelegationSubscriptionRequest: CustomStringConvertible {
    public var description: String { "UpdateDelegationSubscriptionRequest()" }
}

// MARK: - UpdateDelegationSubscriptionResponse

public struct UpdateDelegationSubscriptionResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?
    public var contentLocation: String?
    public var etag: String?
    public var delegationSubscription: DelegationSubscription?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId, contentLocation, etag, delegationSubscription
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                delegationSubscription: DelegationSubscription? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
        self.contentLocation = contentLocation
        self.etag = etag
        self.delegationSubscription = delegationSubscription
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDelegationSubscriptionResponse: CustomStringConvertible {
    public var description: String { "UpdateDelegationSubscriptionResponse()" }
}