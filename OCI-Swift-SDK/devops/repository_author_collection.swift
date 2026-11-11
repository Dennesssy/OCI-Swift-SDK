import Foundation

// MARK: - RepositoryAuthorCollection

public struct RepositoryAuthorCollection: Codable, Sendable {

    public var items: [RepositoryAuthorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [RepositoryAuthorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryAuthorCollection: CustomStringConvertible {
    public var description: String { "RepositoryAuthorCollection()" }
}