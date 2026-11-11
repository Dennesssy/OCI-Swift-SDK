import Foundation

// MARK: - RepositoryPathCommitDetails

public struct RepositoryPathCommitDetails: Codable, Sendable {

    public var commitId: String?
    public var message: String?
    public var author: PrincipalDetails?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case commitId, message, author, timeUpdated
    }

    public init(
                commitId: String? = nil,
                message: String? = nil,
                author: PrincipalDetails? = nil,
                timeUpdated: Date? = nil
    ) {
        self.commitId = commitId
        self.message = message
        self.author = author
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryPathCommitDetails: CustomStringConvertible {
    public var description: String { "RepositoryPathCommitDetails()" }
}