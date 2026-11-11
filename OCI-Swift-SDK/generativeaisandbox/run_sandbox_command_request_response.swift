import Foundation

// MARK: - RunSandboxCommandRequest

public struct RunSandboxCommandRequest: Codable, Sendable {
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

extension RunSandboxCommandRequest: CustomStringConvertible {
    public var description: String { "RunSandboxCommandRequest()" }
}

// MARK: - RunSandboxCommandResponse

public struct RunSandboxCommandResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var sandboxCommandIdentifier: SandboxCommandIdentifier?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, sandboxCommandIdentifier
    }

    public init(
                opcRequestId: String? = nil,
                sandboxCommandIdentifier: SandboxCommandIdentifier? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.sandboxCommandIdentifier = sandboxCommandIdentifier
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RunSandboxCommandResponse: CustomStringConvertible {
    public var description: String { "RunSandboxCommandResponse()" }
}