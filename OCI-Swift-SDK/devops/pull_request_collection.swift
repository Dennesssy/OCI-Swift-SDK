import Foundation

// MARK: - PullRequestCollection

public struct PullRequestCollection: Codable, Sendable {

    public var items: [PullRequestSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PullRequestSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestCollection: CustomStringConvertible {
    public var description: String { "PullRequestCollection()" }
}