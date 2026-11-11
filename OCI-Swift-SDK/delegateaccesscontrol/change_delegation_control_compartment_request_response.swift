import Foundation

// MARK: - ChangeDelegationControlCompartmentRequest

public struct ChangeDelegationControlCompartmentRequest: Codable, Sendable {
    public var delegationControlId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeDelegationControlCompartmentDetails: ChangeDelegationControlCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case delegationControlId, ifMatch, opcRequestId, changeDelegationControlCompartmentDetails
    }

    public init(
                delegationControlId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeDelegationControlCompartmentDetails: ChangeDelegationControlCompartmentDetails? = nil
    ) {
        self.delegationControlId = delegationControlId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeDelegationControlCompartmentDetails = changeDelegationControlCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeDelegationControlCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeDelegationControlCompartmentRequest()" }
}

// MARK: - ChangeDelegationControlCompartmentResponse

public struct ChangeDelegationControlCompartmentResponse: Codable, Sendable {
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

extension ChangeDelegationControlCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeDelegationControlCompartmentResponse()" }
}