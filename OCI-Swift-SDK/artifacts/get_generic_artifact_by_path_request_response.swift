import Foundation

// MARK: - GetGenericArtifactByPathRequest

public struct GetGenericArtifactByPathRequest: Codable, Sendable {
    public var repositoryId: String?
    public var artifactPath: String?
    public var version: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, artifactPath, version, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                artifactPath: String? = nil,
                version: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.artifactPath = artifactPath
        self.version = version
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGenericArtifactByPathRequest: CustomStringConvertible {
    public var description: String { "GetGenericArtifactByPathRequest()" }
}

// MARK: - GetGenericArtifactByPathResponse

public struct GetGenericArtifactByPathResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var genericArtifact: GenericArtifact?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, genericArtifact
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                genericArtifact: GenericArtifact? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.genericArtifact = genericArtifact
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGenericArtifactByPathResponse: CustomStringConvertible {
    public var description: String { "GetGenericArtifactByPathResponse()" }
}