import Foundation
import OCICommon

// MARK: - GetRepositoryRequest

public struct GetRepositoryRequest: Codable, Sendable {
    public var repositoryId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepositoryRequest: CustomStringConvertible {
    public var description: String { "GetRepositoryRequest()" }
}

// MARK: - GetRepositoryResponse

public struct GetRepositoryResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var repository: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, repository
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                repository: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.repository = repository
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepositoryResponse: CustomStringConvertible {
    public var description: String { "GetRepositoryResponse()" }
}