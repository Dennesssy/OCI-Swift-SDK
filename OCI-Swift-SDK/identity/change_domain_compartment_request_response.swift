import Foundation

// MARK: - ChangeDomainCompartmentRequest

public struct ChangeDomainCompartmentRequest: Codable, Sendable {
    public var domainId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var changeDomainCompartmentDetails: ChangeDomainCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case domainId, opcRequestId, ifMatch, changeDomainCompartmentDetails
    }

    public init(
                domainId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                changeDomainCompartmentDetails: ChangeDomainCompartmentDetails? = nil
    ) {
        self.domainId = domainId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.changeDomainCompartmentDetails = changeDomainCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeDomainCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeDomainCompartmentRequest()" }
}

// MARK: - ChangeDomainCompartmentResponse

public struct ChangeDomainCompartmentResponse: Codable, Sendable {
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

extension ChangeDomainCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeDomainCompartmentResponse()" }
}