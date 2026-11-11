import Foundation

// MARK: - RepositoryMirrorRecordCollection

public struct RepositoryMirrorRecordCollection: Codable, Sendable {

    public var items: [RepositoryMirrorRecordSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [RepositoryMirrorRecordSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryMirrorRecordCollection: CustomStringConvertible {
    public var description: String { "RepositoryMirrorRecordCollection()" }
}