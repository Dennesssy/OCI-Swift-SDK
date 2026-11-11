import Foundation

// MARK: - CreateRepositoryRequest

public struct CreateRepositoryRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createRepositoryDetails: CreateRepositoryDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createRepositoryDetails
    }

    public init(
                opcRequestId: String? = nil,
                createRepositoryDetails: CreateRepositoryDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createRepositoryDetails = createRepositoryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateRepositoryRequest: CustomStringConvertible {
    public var description: String { "CreateRepositoryRequest()" }
}

// MARK: - CreateRepositoryResponse

public struct CreateRepositoryResponse: Codable, Sendable {
    public var location: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var etag: String?
    public var repository: Repository?

    private enum CodingKeys: String, CodingKey {
        case location, opcWorkRequestId, opcRequestId, etag, repository
    }

    public init(
                location: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                repository: Repository? = nil
    ) {
        self.location = location
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.repository = repository
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateRepositoryResponse: CustomStringConvertible {
    public var description: String { "CreateRepositoryResponse()" }
}