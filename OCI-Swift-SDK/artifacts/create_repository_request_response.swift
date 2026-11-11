import Foundation
import OCICommon

// MARK: - CreateRepositoryRequest

public struct CreateRepositoryRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createRepositoryDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createRepositoryDetails
    }

    public init(
                opcRequestId: String? = nil,
                createRepositoryDetails: JSONValue? = nil
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

extension CreateRepositoryResponse: CustomStringConvertible {
    public var description: String { "CreateRepositoryResponse()" }
}