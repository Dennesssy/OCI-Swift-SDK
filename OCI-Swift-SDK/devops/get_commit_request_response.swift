import Foundation

// MARK: - GetCommitRequest

public struct GetCommitRequest: Codable, Sendable {
    public var repositoryId: String?
    public var commitId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, commitId, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                commitId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.commitId = commitId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCommitRequest: CustomStringConvertible {
    public var description: String { "GetCommitRequest()" }
}

// MARK: - GetCommitResponse

public struct GetCommitResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var repositoryCommit: RepositoryCommit?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, repositoryCommit
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                repositoryCommit: RepositoryCommit? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.repositoryCommit = repositoryCommit
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCommitResponse: CustomStringConvertible {
    public var description: String { "GetCommitResponse()" }
}