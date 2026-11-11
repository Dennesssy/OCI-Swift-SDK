import Foundation

// MARK: - GetAgentRequest

public struct GetAgentRequest: Codable, Sendable {
    public var agentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case agentId, opcRequestId
    }

    public init(
                agentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.agentId = agentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAgentRequest: CustomStringConvertible {
    public var description: String { "GetAgentRequest()" }
}

// MARK: - GetAgentResponse

public struct GetAgentResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var agent: Agent?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, agent
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                agent: Agent? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.agent = agent
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAgentResponse: CustomStringConvertible {
    public var description: String { "GetAgentResponse()" }
}