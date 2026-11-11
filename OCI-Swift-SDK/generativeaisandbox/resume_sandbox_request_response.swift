import Foundation

// MARK: - ResumeSandboxRequest

public struct ResumeSandboxRequest: Codable, Sendable {
    public var sandboxId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var resumeSandboxDetails: ResumeSandboxDetails?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, opcRequestId, ifMatch, resumeSandboxDetails
    }

    public init(
                sandboxId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                resumeSandboxDetails: ResumeSandboxDetails? = nil
    ) {
        self.sandboxId = sandboxId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.resumeSandboxDetails = resumeSandboxDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResumeSandboxRequest: CustomStringConvertible {
    public var description: String { "ResumeSandboxRequest()" }
}

// MARK: - ResumeSandboxResponse

public struct ResumeSandboxResponse: Codable, Sendable {
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

extension ResumeSandboxResponse: CustomStringConvertible {
    public var description: String { "ResumeSandboxResponse()" }
}