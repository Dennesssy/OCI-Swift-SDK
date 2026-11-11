import Foundation

// MARK: - StopSandboxRequest

public struct StopSandboxRequest: Codable, Sendable {
    public var sandboxId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var stopSandboxDetails: StopSandboxDetails?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, opcRequestId, ifMatch, stopSandboxDetails
    }

    public init(
                sandboxId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                stopSandboxDetails: StopSandboxDetails? = nil
    ) {
        self.sandboxId = sandboxId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.stopSandboxDetails = stopSandboxDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StopSandboxRequest: CustomStringConvertible {
    public var description: String { "StopSandboxRequest()" }
}

// MARK: - StopSandboxResponse

public struct StopSandboxResponse: Codable, Sendable {
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

extension StopSandboxResponse: CustomStringConvertible {
    public var description: String { "StopSandboxResponse()" }
}