import Foundation

// MARK: - DeleteSandboxSnapshotRequest

public struct DeleteSandboxSnapshotRequest: Codable, Sendable {
    public var snapshotId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case snapshotId, opcRequestId, ifMatch
    }

    public init(
                snapshotId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.snapshotId = snapshotId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSandboxSnapshotRequest: CustomStringConvertible {
    public var description: String { "DeleteSandboxSnapshotRequest()" }
}

// MARK: - DeleteSandboxSnapshotResponse

public struct DeleteSandboxSnapshotResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSandboxSnapshotResponse: CustomStringConvertible {
    public var description: String { "DeleteSandboxSnapshotResponse()" }
}