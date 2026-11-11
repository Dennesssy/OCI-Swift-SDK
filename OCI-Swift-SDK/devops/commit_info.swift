import Foundation

// MARK: - CommitInfo

public struct CommitInfo: Codable, Sendable {

    public var repositoryUrl: String?
    public var repositoryBranch: String?
    public var commitHash: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryUrl, repositoryBranch, commitHash
    }

    public init(
                repositoryUrl: String? = nil,
                repositoryBranch: String? = nil,
                commitHash: String? = nil
    ) {
        self.repositoryUrl = repositoryUrl
        self.repositoryBranch = repositoryBranch
        self.commitHash = commitHash
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CommitInfo: CustomStringConvertible {
    public var description: String { "CommitInfo()" }
}