import Foundation

// MARK: - ListCommitsRequest

public struct ListCommitsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var refName: String?
    public var excludeRefName: String?
    public var filePath: String?
    public var timestampGreaterThanOrEqualTo: Date?
    public var timestampLessThanOrEqualTo: Date?
    public var commitMessage: String?
    public var authorName: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, refName, excludeRefName, filePath, timestampGreaterThanOrEqualTo, timestampLessThanOrEqualTo, commitMessage, authorName, limit, page, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                refName: String? = nil,
                excludeRefName: String? = nil,
                filePath: String? = nil,
                timestampGreaterThanOrEqualTo: Date? = nil,
                timestampLessThanOrEqualTo: Date? = nil,
                commitMessage: String? = nil,
                authorName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.refName = refName
        self.excludeRefName = excludeRefName
        self.filePath = filePath
        self.timestampGreaterThanOrEqualTo = timestampGreaterThanOrEqualTo
        self.timestampLessThanOrEqualTo = timestampLessThanOrEqualTo
        self.commitMessage = commitMessage
        self.authorName = authorName
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCommitsRequest: CustomStringConvertible {
    public var description: String { "ListCommitsRequest()" }
}

// MARK: - ListCommitsResponse

public struct ListCommitsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var repositoryCommitCollection: RepositoryCommitCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, repositoryCommitCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                repositoryCommitCollection: RepositoryCommitCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.repositoryCommitCollection = repositoryCommitCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCommitsResponse: CustomStringConvertible {
    public var description: String { "ListCommitsResponse()" }
}