import Foundation
import OCICommon

// MARK: - PutRepositoryRefRequest

public struct PutRepositoryRefRequest: Codable, Sendable {
    public var repositoryId: String?
    public var refName: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var putRepositoryRefDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, refName, ifMatch, opcRequestId, putRepositoryRefDetails
    }

    public init(
                repositoryId: String? = nil,
                refName: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                putRepositoryRefDetails: JSONValue? = nil
    ) {
        self.repositoryId = repositoryId
        self.refName = refName
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.putRepositoryRefDetails = putRepositoryRefDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PutRepositoryRefRequest: CustomStringConvertible {
    public var description: String { "PutRepositoryRefRequest()" }
}

// MARK: - PutRepositoryRefResponse

public struct PutRepositoryRefResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var sunset: String?
    public var repositoryRef: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcWorkRequestId, opcRequestId, sunset, repositoryRef
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                sunset: String? = nil,
                repositoryRef: JSONValue? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.sunset = sunset
        self.repositoryRef = repositoryRef
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PutRepositoryRefResponse: CustomStringConvertible {
    public var description: String { "PutRepositoryRefResponse()" }
}