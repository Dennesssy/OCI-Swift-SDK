import Foundation

// MARK: - GetObjectRequest

public struct GetObjectRequest: Codable, Sendable {
    public var repositoryId: String?
    public var filePath: String?
    public var refName: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, filePath, refName, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                filePath: String? = nil,
                refName: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.filePath = filePath
        self.refName = refName
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetObjectRequest: CustomStringConvertible {
    public var description: String { "GetObjectRequest()" }
}

// MARK: - GetObjectResponse

public struct GetObjectResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var repositoryObject: RepositoryObject?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, repositoryObject
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                repositoryObject: RepositoryObject? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.repositoryObject = repositoryObject
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetObjectResponse: CustomStringConvertible {
    public var description: String { "GetObjectResponse()" }
}