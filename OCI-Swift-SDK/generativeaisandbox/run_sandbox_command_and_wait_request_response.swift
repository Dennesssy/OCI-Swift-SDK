import Foundation

// MARK: - RunSandboxCommandAndWaitRequest

public struct RunSandboxCommandAndWaitRequest: Codable, Sendable {
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

extension RunSandboxCommandAndWaitRequest: CustomStringConvertible {
    public var description: String { "RunSandboxCommandAndWaitRequest()" }
}

// MARK: - RunSandboxCommandAndWaitResponse

public struct RunSandboxCommandAndWaitResponse: Codable, Sendable {
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

extension RunSandboxCommandAndWaitResponse: CustomStringConvertible {
    public var description: String { "RunSandboxCommandAndWaitResponse()" }
}