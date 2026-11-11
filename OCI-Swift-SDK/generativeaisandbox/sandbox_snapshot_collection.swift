import Foundation

// MARK: - SandboxSnapshotCollection

public struct SandboxSnapshotCollection: Codable, Sendable {

    public var items: [SandboxSnapshotSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SandboxSnapshotSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxSnapshotCollection: CustomStringConvertible {
    public var description: String { "SandboxSnapshotCollection()" }
}