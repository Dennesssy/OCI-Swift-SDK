import Foundation

// MARK: - GetRepoFileLinesRequest

public struct GetRepoFileLinesRequest: Codable, Sendable {
    public var repositoryId: String?
    public var revision: String?
    public var filePath: String?
    public var startLineNumber: Int?
    public var limit: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, revision, filePath, startLineNumber, limit, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                revision: String? = nil,
                filePath: String? = nil,
                startLineNumber: Int? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.revision = revision
        self.filePath = filePath
        self.startLineNumber = startLineNumber
        self.limit = limit
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepoFileLinesRequest: CustomStringConvertible {
    public var description: String { "GetRepoFileLinesRequest()" }
}

// MARK: - GetRepoFileLinesResponse

public struct GetRepoFileLinesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var repositoryFileLines: RepositoryFileLines?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, repositoryFileLines
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                repositoryFileLines: RepositoryFileLines? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.repositoryFileLines = repositoryFileLines
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepoFileLinesResponse: CustomStringConvertible {
    public var description: String { "GetRepoFileLinesResponse()" }
}