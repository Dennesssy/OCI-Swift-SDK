import Foundation

// MARK: - GetRepositoryFileLinesRequest

public struct GetRepositoryFileLinesRequest: Codable, Sendable {
    public var repositoryId: String?
    public var filePath: String?
    public var revision: String?
    public var startLineNumber: Int?
    public var limit: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, filePath, revision, startLineNumber, limit, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                filePath: String? = nil,
                revision: String? = nil,
                startLineNumber: Int? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.filePath = filePath
        self.revision = revision
        self.startLineNumber = startLineNumber
        self.limit = limit
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepositoryFileLinesRequest: CustomStringConvertible {
    public var description: String { "GetRepositoryFileLinesRequest()" }
}

// MARK: - GetRepositoryFileLinesResponse

public struct GetRepositoryFileLinesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var sunset: String?
    public var repositoryFileLines: RepositoryFileLines?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, sunset, repositoryFileLines
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                sunset: String? = nil,
                repositoryFileLines: RepositoryFileLines? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.sunset = sunset
        self.repositoryFileLines = repositoryFileLines
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepositoryFileLinesResponse: CustomStringConvertible {
    public var description: String { "GetRepositoryFileLinesResponse()" }
}