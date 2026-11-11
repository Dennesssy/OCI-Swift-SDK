import Foundation

// MARK: - RepositoryPathCollection

public struct RepositoryPathCollection: Codable, Sendable {

    public var items: [RepositoryPathSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [RepositoryPathSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryPathCollection: CustomStringConvertible {
    public var description: String { "RepositoryPathCollection()" }
}