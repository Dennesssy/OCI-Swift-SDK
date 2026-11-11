import Foundation

// MARK: - ChangeWlsDomainCompartmentRequest

public struct ChangeWlsDomainCompartmentRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeWlsDomainCompartmentDetails: ChangeWlsDomainCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, ifMatch, opcRequestId, changeWlsDomainCompartmentDetails
    }

    public init(
                wlsDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeWlsDomainCompartmentDetails: ChangeWlsDomainCompartmentDetails? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeWlsDomainCompartmentDetails = changeWlsDomainCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeWlsDomainCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeWlsDomainCompartmentRequest()" }
}

// MARK: - ChangeWlsDomainCompartmentResponse

public struct ChangeWlsDomainCompartmentResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeWlsDomainCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeWlsDomainCompartmentResponse()" }
}