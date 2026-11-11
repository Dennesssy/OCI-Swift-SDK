import Foundation

// MARK: - ExtendSandboxRequest

public struct ExtendSandboxRequest: Codable, Sendable {
    public var sandboxId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var extendSandboxDetails: ExtendSandboxDetails?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, opcRequestId, ifMatch, extendSandboxDetails
    }

    public init(
                sandboxId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                extendSandboxDetails: ExtendSandboxDetails? = nil
    ) {
        self.sandboxId = sandboxId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.extendSandboxDetails = extendSandboxDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExtendSandboxRequest: CustomStringConvertible {
    public var description: String { "ExtendSandboxRequest()" }
}

// MARK: - ExtendSandboxResponse

public struct ExtendSandboxResponse: Codable, Sendable {
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

extension ExtendSandboxResponse: CustomStringConvertible {
    public var description: String { "ExtendSandboxResponse()" }
}