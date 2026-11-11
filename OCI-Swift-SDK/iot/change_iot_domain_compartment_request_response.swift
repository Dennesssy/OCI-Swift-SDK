import Foundation

// MARK: - ChangeIotDomainCompartmentRequest

public struct ChangeIotDomainCompartmentRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeIotDomainCompartmentDetails: ChangeIotDomainCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, ifMatch, opcRequestId, changeIotDomainCompartmentDetails
    }

    public init(
                iotDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeIotDomainCompartmentDetails: ChangeIotDomainCompartmentDetails? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeIotDomainCompartmentDetails = changeIotDomainCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeIotDomainCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeIotDomainCompartmentRequest()" }
}

// MARK: - ChangeIotDomainCompartmentResponse

public struct ChangeIotDomainCompartmentResponse: Codable, Sendable {
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

extension ChangeIotDomainCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeIotDomainCompartmentResponse()" }
}