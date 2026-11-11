import Foundation

// MARK: - ChangeDelegationSubscriptionCompartmentRequest

public struct ChangeDelegationSubscriptionCompartmentRequest: Codable, Sendable {
    public var delegationSubscriptionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeDelegationSubscriptionCompartmentDetails: ChangeDelegationSubscriptionCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case delegationSubscriptionId, ifMatch, opcRequestId, changeDelegationSubscriptionCompartmentDetails
    }

    public init(
                delegationSubscriptionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeDelegationSubscriptionCompartmentDetails: ChangeDelegationSubscriptionCompartmentDetails? = nil
    ) {
        self.delegationSubscriptionId = delegationSubscriptionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeDelegationSubscriptionCompartmentDetails = changeDelegationSubscriptionCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeDelegationSubscriptionCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeDelegationSubscriptionCompartmentRequest()" }
}

// MARK: - ChangeDelegationSubscriptionCompartmentResponse

public struct ChangeDelegationSubscriptionCompartmentResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeDelegationSubscriptionCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeDelegationSubscriptionCompartmentResponse()" }
}