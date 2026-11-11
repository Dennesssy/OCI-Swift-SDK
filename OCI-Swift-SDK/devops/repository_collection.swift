import Foundation

// MARK: - RepositoryCollection

public struct RepositoryCollection: Codable, Sendable {

    public var items: [RepositorySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [RepositorySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryCollection: CustomStringConvertible {
    public var description: String { "RepositoryCollection()" }
}