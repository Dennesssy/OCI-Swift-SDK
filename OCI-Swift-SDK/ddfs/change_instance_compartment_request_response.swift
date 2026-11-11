import Foundation

// MARK: - ChangeInstanceCompartmentRequest

public struct ChangeInstanceCompartmentRequest: Codable, Sendable {
    public var instanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeInstanceCompartmentDetails: ChangeInstanceCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case instanceId, ifMatch, opcRequestId, changeInstanceCompartmentDetails
    }

    public init(
                instanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeInstanceCompartmentDetails: ChangeInstanceCompartmentDetails? = nil
    ) {
        self.instanceId = instanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeInstanceCompartmentDetails = changeInstanceCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeInstanceCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeInstanceCompartmentRequest()" }
}

// MARK: - ChangeInstanceCompartmentResponse

public struct ChangeInstanceCompartmentResponse: Codable, Sendable {
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

extension ChangeInstanceCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeInstanceCompartmentResponse()" }
}