import Foundation

// MARK: - CancelSandboxCommandRequest

public struct CancelSandboxCommandRequest: Codable, Sendable {
    public var sandboxId: String?
    public var commandId: String?
    public var opcRequestId: String?
    public var cancelSandboxCommandDetails: CancelSandboxCommandDetails?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, commandId, opcRequestId, cancelSandboxCommandDetails
    }

    public init(
                sandboxId: String? = nil,
                commandId: String? = nil,
                opcRequestId: String? = nil,
                cancelSandboxCommandDetails: CancelSandboxCommandDetails? = nil
    ) {
        self.sandboxId = sandboxId
        self.commandId = commandId
        self.opcRequestId = opcRequestId
        self.cancelSandboxCommandDetails = cancelSandboxCommandDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelSandboxCommandRequest: CustomStringConvertible {
    public var description: String { "CancelSandboxCommandRequest()" }
}

// MARK: - CancelSandboxCommandResponse

public struct CancelSandboxCommandResponse: Codable, Sendable {
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

extension CancelSandboxCommandResponse: CustomStringConvertible {
    public var description: String { "CancelSandboxCommandResponse()" }
}