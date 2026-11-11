import Foundation

// MARK: - ChangeInfrastructureCompartmentRequest

public struct ChangeInfrastructureCompartmentRequest: Codable, Sendable {
    public var infrastructureId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeInfrastructureCompartmentDetails: ChangeInfrastructureCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, ifMatch, opcRequestId, changeInfrastructureCompartmentDetails
    }

    public init(
                infrastructureId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeInfrastructureCompartmentDetails: ChangeInfrastructureCompartmentDetails? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeInfrastructureCompartmentDetails = changeInfrastructureCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeInfrastructureCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeInfrastructureCompartmentRequest()" }
}

// MARK: - ChangeInfrastructureCompartmentResponse

public struct ChangeInfrastructureCompartmentResponse: Codable, Sendable {
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

extension ChangeInfrastructureCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeInfrastructureCompartmentResponse()" }
}