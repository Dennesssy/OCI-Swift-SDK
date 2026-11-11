import Foundation

// MARK: - CreateAgentEndpointRequest

public struct CreateAgentEndpointRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createAgentEndpointDetails: CreateAgentEndpointDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createAgentEndpointDetails
    }

    public init(
                opcRequestId: String? = nil,
                createAgentEndpointDetails: CreateAgentEndpointDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createAgentEndpointDetails = createAgentEndpointDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAgentEndpointRequest: CustomStringConvertible {
    public var description: String { "CreateAgentEndpointRequest()" }
}

// MARK: - CreateAgentEndpointResponse

public struct CreateAgentEndpointResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var agentEndpoint: AgentEndpoint?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, agentEndpoint
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                agentEndpoint: AgentEndpoint? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.agentEndpoint = agentEndpoint
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAgentEndpointResponse: CustomStringConvertible {
    public var description: String { "CreateAgentEndpointResponse()" }
}