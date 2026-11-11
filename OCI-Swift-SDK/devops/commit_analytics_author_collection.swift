import Foundation

// MARK: - CommitAnalyticsAuthorCollection

public struct CommitAnalyticsAuthorCollection: Codable, Sendable {

    public var items: [CommitAnalyticsAuthorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [CommitAnalyticsAuthorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CommitAnalyticsAuthorCollection: CustomStringConvertible {
    public var description: String { "CommitAnalyticsAuthorCollection()" }
}