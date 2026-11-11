import Foundation

// MARK: - GetSessionRequest

public struct GetSessionRequest: Codable, Sendable {
    public var agentEndpointId: String?
    public var sessionId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId, sessionId, opcRequestId
    }

    public init(
                agentEndpointId: String? = nil,
                sessionId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.agentEndpointId = agentEndpointId
        self.sessionId = sessionId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSessionRequest: CustomStringConvertible {
    public var description: String { "GetSessionRequest()" }
}

// MARK: - GetSessionResponse

public struct GetSessionResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var session: Session?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, session
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                session: Session? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.session = session
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSessionResponse: CustomStringConvertible {
    public var description: String { "GetSessionResponse()" }
}