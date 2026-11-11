import Foundation

// MARK: - BuildRunSnapshotCollection

public struct BuildRunSnapshotCollection: Codable, Sendable {

    public var items: [BuildRunSnapshotSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BuildRunSnapshotSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildRunSnapshotCollection: CustomStringConvertible {
    public var description: String { "BuildRunSnapshotCollection()" }
}