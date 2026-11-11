import Foundation

// MARK: - CreateAgentRequest

public struct CreateAgentRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createAgentDetails: CreateAgentDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createAgentDetails
    }

    public init(
                opcRequestId: String? = nil,
                createAgentDetails: CreateAgentDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createAgentDetails = createAgentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAgentRequest: CustomStringConvertible {
    public var description: String { "CreateAgentRequest()" }
}

// MARK: - CreateAgentResponse

public struct CreateAgentResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var agent: Agent?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, agent
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                agent: Agent? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.agent = agent
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAgentResponse: CustomStringConvertible {
    public var description: String { "CreateAgentResponse()" }
}