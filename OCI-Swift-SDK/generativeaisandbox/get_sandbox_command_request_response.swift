import Foundation

// MARK: - GetSandboxCommandRequest

public struct GetSandboxCommandRequest: Codable, Sendable {
    public var sandboxId: String?
    public var commandId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, commandId, opcRequestId
    }

    public init(
                sandboxId: String? = nil,
                commandId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.sandboxId = sandboxId
        self.commandId = commandId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSandboxCommandRequest: CustomStringConvertible {
    public var description: String { "GetSandboxCommandRequest()" }
}

// MARK: - GetSandboxCommandResponse

public struct GetSandboxCommandResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var sandboxCommand: SandboxCommand?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, sandboxCommand
    }

    public init(
                opcRequestId: String? = nil,
                sandboxCommand: SandboxCommand? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.sandboxCommand = sandboxCommand
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSandboxCommandResponse: CustomStringConvertible {
    public var description: String { "GetSandboxCommandResponse()" }
}