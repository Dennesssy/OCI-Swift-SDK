import Foundation

// MARK: - UpdateAgentRequest

public struct UpdateAgentRequest: Codable, Sendable {
    public var agentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateAgentDetails: UpdateAgentDetails?

    private enum CodingKeys: String, CodingKey {
        case agentId, ifMatch, opcRequestId, updateAgentDetails
    }

    public init(
                agentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateAgentDetails: UpdateAgentDetails? = nil
    ) {
        self.agentId = agentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateAgentDetails = updateAgentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAgentRequest: CustomStringConvertible {
    public var description: String { "UpdateAgentRequest()" }
}

// MARK: - UpdateAgentResponse

public struct UpdateAgentResponse: Codable, Sendable {
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

extension UpdateAgentResponse: CustomStringConvertible {
    public var description: String { "UpdateAgentResponse()" }
}