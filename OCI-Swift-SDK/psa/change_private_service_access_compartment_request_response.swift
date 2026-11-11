import Foundation

// MARK: - ChangePrivateServiceAccessCompartmentRequest

public struct ChangePrivateServiceAccessCompartmentRequest: Codable, Sendable {
    public var privateServiceAccessId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changePrivateServiceAccessCompartmentDetails: ChangePrivateServiceAccessCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case privateServiceAccessId, ifMatch, opcRequestId, changePrivateServiceAccessCompartmentDetails
    }

    public init(
                privateServiceAccessId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changePrivateServiceAccessCompartmentDetails: ChangePrivateServiceAccessCompartmentDetails? = nil
    ) {
        self.privateServiceAccessId = privateServiceAccessId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changePrivateServiceAccessCompartmentDetails = changePrivateServiceAccessCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangePrivateServiceAccessCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangePrivateServiceAccessCompartmentRequest()" }
}

// MARK: - ChangePrivateServiceAccessCompartmentResponse

public struct ChangePrivateServiceAccessCompartmentResponse: Codable, Sendable {
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

extension ChangePrivateServiceAccessCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangePrivateServiceAccessCompartmentResponse()" }
}