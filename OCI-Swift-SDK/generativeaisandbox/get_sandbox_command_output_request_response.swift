import Foundation

// MARK: - GetSandboxCommandOutputRequest

public struct GetSandboxCommandOutputRequest: Codable, Sendable {
    public var sandboxId: String?
    public var commandId: String?
    public var opcRequestId: String?
    public var fromSeq: Int64?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, commandId, opcRequestId, fromSeq
    }

    public init(
                sandboxId: String? = nil,
                commandId: String? = nil,
                opcRequestId: String? = nil,
                fromSeq: Int64? = nil
    ) {
        self.sandboxId = sandboxId
        self.commandId = commandId
        self.opcRequestId = opcRequestId
        self.fromSeq = fromSeq
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSandboxCommandOutputRequest: CustomStringConvertible {
    public var description: String { "GetSandboxCommandOutputRequest()" }
}

// MARK: - GetSandboxCommandOutputResponse

public struct GetSandboxCommandOutputResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var sandboxCommandOutput: SandboxCommandOutput?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, sandboxCommandOutput
    }

    public init(
                opcRequestId: String? = nil,
                sandboxCommandOutput: SandboxCommandOutput? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.sandboxCommandOutput = sandboxCommandOutput
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSandboxCommandOutputResponse: CustomStringConvertible {
    public var description: String { "GetSandboxCommandOutputResponse()" }
}