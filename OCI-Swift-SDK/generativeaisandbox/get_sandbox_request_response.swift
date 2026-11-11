import Foundation

// MARK: - GetSandboxRequest

public struct GetSandboxRequest: Codable, Sendable {
    public var sandboxId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, opcRequestId
    }

    public init(
                sandboxId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.sandboxId = sandboxId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSandboxRequest: CustomStringConvertible {
    public var description: String { "GetSandboxRequest()" }
}

// MARK: - GetSandboxResponse

public struct GetSandboxResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var sandbox: Sandbox?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, sandbox
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                sandbox: Sandbox? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.sandbox = sandbox
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSandboxResponse: CustomStringConvertible {
    public var description: String { "GetSandboxResponse()" }
}