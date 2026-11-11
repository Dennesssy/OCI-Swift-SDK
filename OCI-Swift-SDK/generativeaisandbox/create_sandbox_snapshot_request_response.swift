import Foundation

// MARK: - CreateSandboxSnapshotRequest

public struct CreateSandboxSnapshotRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createSandboxSnapshotDetails: CreateSandboxSnapshotDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createSandboxSnapshotDetails
    }

    public init(
                opcRequestId: String? = nil,
                createSandboxSnapshotDetails: CreateSandboxSnapshotDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createSandboxSnapshotDetails = createSandboxSnapshotDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSandboxSnapshotRequest: CustomStringConvertible {
    public var description: String { "CreateSandboxSnapshotRequest()" }
}

// MARK: - CreateSandboxSnapshotResponse

public struct CreateSandboxSnapshotResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var sandboxSnapshot: SandboxSnapshot?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, sandboxSnapshot
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                sandboxSnapshot: SandboxSnapshot? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.sandboxSnapshot = sandboxSnapshot
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSandboxSnapshotResponse: CustomStringConvertible {
    public var description: String { "CreateSandboxSnapshotResponse()" }
}