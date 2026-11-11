import Foundation

// MARK: - RepositoryCommitCollection

public struct RepositoryCommitCollection: Codable, Sendable {

    public var items: [RepositoryCommitSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [RepositoryCommitSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryCommitCollection: CustomStringConvertible {
    public var description: String { "RepositoryCommitCollection()" }
}