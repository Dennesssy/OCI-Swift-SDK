import Foundation

// MARK: - RunSandboxCommandAndStreamRequest

public struct RunSandboxCommandAndStreamRequest: Codable, Sendable {
    public var sandboxId: String?
    public var opcRequestId: String?
    public var runSandboxCommandDetails: RunSandboxCommandDetails?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, opcRequestId, runSandboxCommandDetails
    }

    public init(
                sandboxId: String? = nil,
                opcRequestId: String? = nil,
                runSandboxCommandDetails: RunSandboxCommandDetails? = nil
    ) {
        self.sandboxId = sandboxId
        self.opcRequestId = opcRequestId
        self.runSandboxCommandDetails = runSandboxCommandDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RunSandboxCommandAndStreamRequest: CustomStringConvertible {
    public var description: String { "RunSandboxCommandAndStreamRequest()" }
}

// MARK: - RunSandboxCommandAndStreamResponse

public struct RunSandboxCommandAndStreamResponse: Codable, Sendable {
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

extension RunSandboxCommandAndStreamResponse: CustomStringConvertible {
    public var description: String { "RunSandboxCommandAndStreamResponse()" }
}