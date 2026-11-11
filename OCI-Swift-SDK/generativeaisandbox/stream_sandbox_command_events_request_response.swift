import Foundation

// MARK: - StreamSandboxCommandEventsRequest

public struct StreamSandboxCommandEventsRequest: Codable, Sendable {
    public var sandboxId: String?
    public var commandId: String?
    public var opcRequestId: String?
    public var fromSeq: Int64?
    public var untilSeq: Int64?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, commandId, opcRequestId, fromSeq, untilSeq
    }

    public init(
                sandboxId: String? = nil,
                commandId: String? = nil,
                opcRequestId: String? = nil,
                fromSeq: Int64? = nil,
                untilSeq: Int64? = nil
    ) {
        self.sandboxId = sandboxId
        self.commandId = commandId
        self.opcRequestId = opcRequestId
        self.fromSeq = fromSeq
        self.untilSeq = untilSeq
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StreamSandboxCommandEventsRequest: CustomStringConvertible {
    public var description: String { "StreamSandboxCommandEventsRequest()" }
}

// MARK: - StreamSandboxCommandEventsResponse

public struct StreamSandboxCommandEventsResponse: Codable, Sendable {
    public var content: Data?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case content, opcRequestId
    }

    public init(
                content: Data? = nil,
                opcRequestId: String? = nil
    ) {
        self.content = content
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StreamSandboxCommandEventsResponse: CustomStringConvertible {
    public var description: String { "StreamSandboxCommandEventsResponse()" }
}