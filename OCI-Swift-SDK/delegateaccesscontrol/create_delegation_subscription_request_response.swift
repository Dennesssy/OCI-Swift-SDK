import Foundation

// MARK: - CreateDelegationSubscriptionRequest

public struct CreateDelegationSubscriptionRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDelegationSubscriptionDetails: CreateDelegationSubscriptionDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDelegationSubscriptionDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDelegationSubscriptionDetails: CreateDelegationSubscriptionDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDelegationSubscriptionDetails = createDelegationSubscriptionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDelegationSubscriptionRequest: CustomStringConvertible {
    public var description: String { "CreateDelegationSubscriptionRequest()" }
}

// MARK: - CreateDelegationSubscriptionResponse

public struct CreateDelegationSubscriptionResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var delegationSubscription: DelegationSubscription?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, delegationSubscription
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                delegationSubscription: DelegationSubscription? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.delegationSubscription = delegationSubscription
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDelegationSubscriptionResponse: CustomStringConvertible {
    public var description: String { "CreateDelegationSubscriptionResponse()" }
}