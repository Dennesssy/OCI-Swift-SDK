import Foundation

// MARK: - GetAgentEndpointRequest

public struct GetAgentEndpointRequest: Codable, Sendable {
    public var agentEndpointId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId, opcRequestId
    }

    public init(
                agentEndpointId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.agentEndpointId = agentEndpointId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAgentEndpointRequest: CustomStringConvertible {
    public var description: String { "GetAgentEndpointRequest()" }
}

// MARK: - GetAgentEndpointResponse

public struct GetAgentEndpointResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var agentEndpoint: AgentEndpoint?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, agentEndpoint
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                agentEndpoint: AgentEndpoint? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.agentEndpoint = agentEndpoint
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAgentEndpointResponse: CustomStringConvertible {
    public var description: String { "GetAgentEndpointResponse()" }
}