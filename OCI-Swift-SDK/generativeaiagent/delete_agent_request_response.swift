import Foundation

// MARK: - DeleteAgentRequest

public struct DeleteAgentRequest: Codable, Sendable {
    public var agentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case agentId, ifMatch, opcRequestId
    }

    public init(
                agentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.agentId = agentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteAgentRequest: CustomStringConvertible {
    public var description: String { "DeleteAgentRequest()" }
}

// MARK: - DeleteAgentResponse

public struct DeleteAgentResponse: Codable, Sendable {
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

extension DeleteAgentResponse: CustomStringConvertible {
    public var description: String { "DeleteAgentResponse()" }
}