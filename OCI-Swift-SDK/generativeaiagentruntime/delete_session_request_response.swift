import Foundation

// MARK: - DeleteSessionRequest

public struct DeleteSessionRequest: Codable, Sendable {
    public var agentEndpointId: String?
    public var sessionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId, sessionId, ifMatch, opcRequestId
    }

    public init(
                agentEndpointId: String? = nil,
                sessionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.agentEndpointId = agentEndpointId
        self.sessionId = sessionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSessionRequest: CustomStringConvertible {
    public var description: String { "DeleteSessionRequest()" }
}

// MARK: - DeleteSessionResponse

public struct DeleteSessionResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSessionResponse: CustomStringConvertible {
    public var description: String { "DeleteSessionResponse()" }
}