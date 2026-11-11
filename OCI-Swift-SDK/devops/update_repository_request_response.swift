import Foundation

// MARK: - UpdateRepositoryRequest

public struct UpdateRepositoryRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateRepositoryDetails: UpdateRepositoryDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, updateRepositoryDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateRepositoryDetails: UpdateRepositoryDetails? = nil
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
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var etag: String?
    public var repository: Repository?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, etag, repository
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                repository: Repository? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.repository = repository
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateRepositoryResponse: CustomStringConvertible {
    public var description: String { "UpdateRepositoryResponse()" }
}