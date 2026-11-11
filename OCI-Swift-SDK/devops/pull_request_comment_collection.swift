import Foundation

// MARK: - PullRequestCommentCollection

public struct PullRequestCommentCollection: Codable, Sendable {

    public var items: [PullRequestCommentSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PullRequestCommentSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestCommentCollection: CustomStringConvertible {
    public var description: String { "PullRequestCommentCollection()" }
}