import Foundation
import OCICommon

// MARK: - CreateOrUpdateGitRefRequest

public struct CreateOrUpdateGitRefRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createOrUpdateGitRefDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, createOrUpdateGitRefDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createOrUpdateGitRefDetails: JSONValue? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createOrUpdateGitRefDetails = createOrUpdateGitRefDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOrUpdateGitRefRequest: CustomStringConvertible {
    public var description: String { "CreateOrUpdateGitRefRequest()" }
}

// MARK: - CreateOrUpdateGitRefResponse

public struct CreateOrUpdateGitRefResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var repositoryRef: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcWorkRequestId, opcRequestId, repositoryRef
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                repositoryRef: JSONValue? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.repositoryRef = repositoryRef
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOrUpdateGitRefResponse: CustomStringConvertible {
    public var description: String { "CreateOrUpdateGitRefResponse()" }
}