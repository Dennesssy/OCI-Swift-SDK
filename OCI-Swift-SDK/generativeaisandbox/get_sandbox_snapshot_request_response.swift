import Foundation

// MARK: - GetSandboxSnapshotRequest

public struct GetSandboxSnapshotRequest: Codable, Sendable {
    public var snapshotId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case snapshotId, opcRequestId
    }

    public init(
                snapshotId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.snapshotId = snapshotId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSandboxSnapshotRequest: CustomStringConvertible {
    public var description: String { "GetSandboxSnapshotRequest()" }
}

// MARK: - GetSandboxSnapshotResponse

public struct GetSandboxSnapshotResponse: Codable, Sendable {
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

extension GetSandboxSnapshotResponse: CustomStringConvertible {
    public var description: String { "GetSandboxSnapshotResponse()" }
}