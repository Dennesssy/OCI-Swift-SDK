import Foundation

// MARK: - CreateSandboxRequest

public struct CreateSandboxRequest: Codable, Sendable {
    public var projectId: String?
    public var opcRequestId: String?
    public var createSandboxDetails: CreateSandboxDetails?

    private enum CodingKeys: String, CodingKey {
        case projectId, opcRequestId, createSandboxDetails
    }

    public init(
                projectId: String? = nil,
                opcRequestId: String? = nil,
                createSandboxDetails: CreateSandboxDetails? = nil
    ) {
        self.projectId = projectId
        self.opcRequestId = opcRequestId
        self.createSandboxDetails = createSandboxDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSandboxRequest: CustomStringConvertible {
    public var description: String { "CreateSandboxRequest()" }
}

// MARK: - CreateSandboxResponse

public struct CreateSandboxResponse: Codable, Sendable {
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

extension CreateSandboxResponse: CustomStringConvertible {
    public var description: String { "CreateSandboxResponse()" }
}