import Foundation

// MARK: - PullRequestAuthorCollection

public struct PullRequestAuthorCollection: Codable, Sendable {

    public var items: [PullRequestAuthorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PullRequestAuthorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestAuthorCollection: CustomStringConvertible {
    public var description: String { "PullRequestAuthorCollection()" }
}