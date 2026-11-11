import Foundation

// MARK: - CommitActivitySummary

public struct CommitActivitySummary: Codable, Sendable {

    public var id: String?
    public var principal: PrincipalDetails?
    public var pullRequestId: String?
    public var timeOccurred: Date?
    public var commitsAdded: [RepositoryCommit]
    public var commitsRemoved: [RepositoryCommit]

    private enum CodingKeys: String, CodingKey {
        case id, principal, pullRequestId, timeOccurred, commitsAdded, commitsRemoved
    }

    public init(
                id: String? = nil,
                principal: PrincipalDetails? = nil,
                pullRequestId: String? = nil,
                timeOccurred: Date? = nil,
                commitsAdded: [RepositoryCommit],
                commitsRemoved: [RepositoryCommit]
    ) {
        self.id = id
        self.principal = principal
        self.pullRequestId = pullRequestId
        self.timeOccurred = timeOccurred
        self.commitsAdded = commitsAdded
        self.commitsRemoved = commitsRemoved
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CommitActivitySummary: CustomStringConvertible {
    public var description: String { "CommitActivitySummary()" }
}