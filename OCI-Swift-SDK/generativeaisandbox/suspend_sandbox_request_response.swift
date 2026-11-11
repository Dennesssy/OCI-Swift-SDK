import Foundation

// MARK: - SuspendSandboxRequest

public struct SuspendSandboxRequest: Codable, Sendable {
    public var sandboxId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var suspendSandboxDetails: SuspendSandboxDetails?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, opcRequestId, ifMatch, suspendSandboxDetails
    }

    public init(
                sandboxId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                suspendSandboxDetails: SuspendSandboxDetails? = nil
    ) {
        self.sandboxId = sandboxId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.suspendSandboxDetails = suspendSandboxDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SuspendSandboxRequest: CustomStringConvertible {
    public var description: String { "SuspendSandboxRequest()" }
}

// MARK: - SuspendSandboxResponse

public struct SuspendSandboxResponse: Codable, Sendable {
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

extension SuspendSandboxResponse: CustomStringConvertible {
    public var description: String { "SuspendSandboxResponse()" }
}