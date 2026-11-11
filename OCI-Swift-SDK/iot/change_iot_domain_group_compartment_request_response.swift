import Foundation

// MARK: - ChangeIotDomainGroupCompartmentRequest

public struct ChangeIotDomainGroupCompartmentRequest: Codable, Sendable {
    public var iotDomainGroupId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeIotDomainGroupCompartmentDetails: ChangeIotDomainGroupCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case iotDomainGroupId, ifMatch, opcRequestId, changeIotDomainGroupCompartmentDetails
    }

    public init(
                iotDomainGroupId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeIotDomainGroupCompartmentDetails: ChangeIotDomainGroupCompartmentDetails? = nil
    ) {
        self.iotDomainGroupId = iotDomainGroupId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeIotDomainGroupCompartmentDetails = changeIotDomainGroupCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeIotDomainGroupCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeIotDomainGroupCompartmentRequest()" }
}

// MARK: - ChangeIotDomainGroupCompartmentResponse

public struct ChangeIotDomainGroupCompartmentResponse: Codable, Sendable {
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

extension ChangeIotDomainGroupCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeIotDomainGroupCompartmentResponse()" }
}