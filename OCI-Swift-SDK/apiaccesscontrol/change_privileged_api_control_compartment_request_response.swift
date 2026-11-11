import Foundation

// MARK: - ChangePrivilegedApiControlCompartmentRequest

public struct ChangePrivilegedApiControlCompartmentRequest: Codable, Sendable {
    public var privilegedApiControlId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changePrivilegedApiControlCompartmentDetails: ChangePrivilegedApiControlCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case privilegedApiControlId, ifMatch, opcRequestId, changePrivilegedApiControlCompartmentDetails
    }

    public init(
                privilegedApiControlId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changePrivilegedApiControlCompartmentDetails: ChangePrivilegedApiControlCompartmentDetails? = nil
    ) {
        self.privilegedApiControlId = privilegedApiControlId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changePrivilegedApiControlCompartmentDetails = changePrivilegedApiControlCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangePrivilegedApiControlCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangePrivilegedApiControlCompartmentRequest()" }
}

// MARK: - ChangePrivilegedApiControlCompartmentResponse

public struct ChangePrivilegedApiControlCompartmentResponse: Codable, Sendable {
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

extension ChangePrivilegedApiControlCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangePrivilegedApiControlCompartmentResponse()" }
}