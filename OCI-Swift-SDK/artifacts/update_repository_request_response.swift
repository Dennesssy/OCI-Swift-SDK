import Foundation
import OCICommon

// MARK: - UpdateRepositoryRequest

public struct UpdateRepositoryRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateRepositoryDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, updateRepositoryDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateRepositoryDetails: JSONValue? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateRepositoryDetails = updateRepositoryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateRepositoryRequest: CustomStringConvertible {
    public var description: String { "UpdateRepositoryRequest()" }
}

// MARK: - UpdateRepositoryResponse

public struct UpdateRepositoryResponse: Codable, Sendable {
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

extension UpdateRepositoryResponse: CustomStringConvertible {
    public var description: String { "UpdateRepositoryResponse()" }
}