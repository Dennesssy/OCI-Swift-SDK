import Foundation

// MARK: - SandboxSnapshotSource

public struct SandboxSnapshotSource: Codable, Sendable {

    public var snapshotId: String?

    private enum CodingKeys: String, CodingKey {
        case snapshotId
    }

    public init(
                snapshotId: String? = nil
    ) {
        self.snapshotId = snapshotId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxSnapshotSource: CustomStringConvertible {
    public var description: String { "SandboxSnapshotSource()" }
}