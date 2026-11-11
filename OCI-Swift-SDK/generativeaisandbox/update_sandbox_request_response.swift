import Foundation

// MARK: - UpdateSandboxRequest

public struct UpdateSandboxRequest: Codable, Sendable {
    public var sandboxId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateSandboxDetails: UpdateSandboxDetails?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, opcRequestId, ifMatch, updateSandboxDetails
    }

    public init(
                sandboxId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateSandboxDetails: UpdateSandboxDetails? = nil
    ) {
        self.sandboxId = sandboxId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateSandboxDetails = updateSandboxDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSandboxRequest: CustomStringConvertible {
    public var description: String { "UpdateSandboxRequest()" }
}

// MARK: - UpdateSandboxResponse

public struct UpdateSandboxResponse: Codable, Sendable {
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

extension UpdateSandboxResponse: CustomStringConvertible {
    public var description: String { "UpdateSandboxResponse()" }
}