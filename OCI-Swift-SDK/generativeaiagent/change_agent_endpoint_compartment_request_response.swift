import Foundation

// MARK: - ChangeAgentEndpointCompartmentRequest

public struct ChangeAgentEndpointCompartmentRequest: Codable, Sendable {
    public var agentEndpointId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeAgentEndpointCompartmentDetails: ChangeAgentEndpointCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId, ifMatch, opcRequestId, changeAgentEndpointCompartmentDetails
    }

    public init(
                agentEndpointId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeAgentEndpointCompartmentDetails: ChangeAgentEndpointCompartmentDetails? = nil
    ) {
        self.agentEndpointId = agentEndpointId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeAgentEndpointCompartmentDetails = changeAgentEndpointCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeAgentEndpointCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeAgentEndpointCompartmentRequest()" }
}

// MARK: - ChangeAgentEndpointCompartmentResponse

public struct ChangeAgentEndpointCompartmentResponse: Codable, Sendable {
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

extension ChangeAgentEndpointCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeAgentEndpointCompartmentResponse()" }
}