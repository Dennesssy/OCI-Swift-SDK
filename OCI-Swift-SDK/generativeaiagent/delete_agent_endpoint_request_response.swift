import Foundation

// MARK: - DeleteAgentEndpointRequest

public struct DeleteAgentEndpointRequest: Codable, Sendable {
    public var agentEndpointId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId, ifMatch, opcRequestId
    }

    public init(
                agentEndpointId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.agentEndpointId = agentEndpointId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteAgentEndpointRequest: CustomStringConvertible {
    public var description: String { "DeleteAgentEndpointRequest()" }
}

// MARK: - DeleteAgentEndpointResponse

public struct DeleteAgentEndpointResponse: Codable, Sendable {
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

extension DeleteAgentEndpointResponse: CustomStringConvertible {
    public var description: String { "DeleteAgentEndpointResponse()" }
}