import Foundation

// MARK: - UpdateAgentEndpointRequest

public struct UpdateAgentEndpointRequest: Codable, Sendable {
    public var agentEndpointId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateAgentEndpointDetails: UpdateAgentEndpointDetails?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId, ifMatch, opcRequestId, updateAgentEndpointDetails
    }

    public init(
                agentEndpointId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateAgentEndpointDetails: UpdateAgentEndpointDetails? = nil
    ) {
        self.agentEndpointId = agentEndpointId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateAgentEndpointDetails = updateAgentEndpointDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAgentEndpointRequest: CustomStringConvertible {
    public var description: String { "UpdateAgentEndpointRequest()" }
}

// MARK: - UpdateAgentEndpointResponse

public struct UpdateAgentEndpointResponse: Codable, Sendable {
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

extension UpdateAgentEndpointResponse: CustomStringConvertible {
    public var description: String { "UpdateAgentEndpointResponse()" }
}