import Foundation

// MARK: - UpdateSessionRequest

public struct UpdateSessionRequest: Codable, Sendable {
    public var agentEndpointId: String?
    public var sessionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateSessionDetails: UpdateSessionDetails?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId, sessionId, ifMatch, opcRequestId, updateSessionDetails
    }

    public init(
                agentEndpointId: String? = nil,
                sessionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateSessionDetails: UpdateSessionDetails? = nil
    ) {
        self.agentEndpointId = agentEndpointId
        self.sessionId = sessionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateSessionDetails = updateSessionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSessionRequest: CustomStringConvertible {
    public var description: String { "UpdateSessionRequest()" }
}

// MARK: - UpdateSessionResponse

public struct UpdateSessionResponse: Codable, Sendable {
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

extension UpdateSessionResponse: CustomStringConvertible {
    public var description: String { "UpdateSessionResponse()" }
}