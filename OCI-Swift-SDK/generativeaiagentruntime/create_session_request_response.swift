import Foundation

// MARK: - CreateSessionRequest

public struct CreateSessionRequest: Codable, Sendable {
    public var agentEndpointId: String?
    public var opcRequestId: String?
    public var createSessionDetails: CreateSessionDetails?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId, opcRequestId, createSessionDetails
    }

    public init(
                agentEndpointId: String? = nil,
                opcRequestId: String? = nil,
                createSessionDetails: CreateSessionDetails? = nil
    ) {
        self.agentEndpointId = agentEndpointId
        self.opcRequestId = opcRequestId
        self.createSessionDetails = createSessionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSessionRequest: CustomStringConvertible {
    public var description: String { "CreateSessionRequest()" }
}

// MARK: - CreateSessionResponse

public struct CreateSessionResponse: Codable, Sendable {
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

extension CreateSessionResponse: CustomStringConvertible {
    public var description: String { "CreateSessionResponse()" }
}