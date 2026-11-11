import Foundation

// MARK: - ChatRequest

public struct ChatRequest: Codable, Sendable {
    public var agentEndpointId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var chatDetails: ChatDetails?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId, opcRequestId, ifMatch, chatDetails
    }

    public init(
                agentEndpointId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                chatDetails: ChatDetails? = nil
    ) {
        self.agentEndpointId = agentEndpointId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.chatDetails = chatDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChatRequest: CustomStringConvertible {
    public var description: String { "ChatRequest()" }
}

// MARK: - ChatResponse

public struct ChatResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var chatResult: ChatResult?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, chatResult
    }

    public init(
                opcRequestId: String? = nil,
                chatResult: ChatResult? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.chatResult = chatResult
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChatResponse: CustomStringConvertible {
    public var description: String { "ChatResponse()" }
}