import Foundation

// MARK: - CommitMessageSettings

public struct CommitMessageSettings: Codable, Sendable {

    public var commitSummariesCount: Int?

    private enum CodingKeys: String, CodingKey {
        case commitSummariesCount
    }

    public init(
                commitSummariesCount: Int? = nil
    ) {
        self.commitSummariesCount = commitSummariesCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CommitMessageSettings: CustomStringConvertible {
    public var description: String { "CommitMessageSettings()" }
}