import Foundation

// MARK: - UpdateGenericArtifactByPathRequest

public struct UpdateGenericArtifactByPathRequest: Codable, Sendable {
    public var repositoryId: String?
    public var artifactPath: String?
    public var version: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateGenericArtifactByPathDetails: UpdateGenericArtifactByPathDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, artifactPath, version, ifMatch, opcRequestId, updateGenericArtifactByPathDetails
    }

    public init(
                repositoryId: String? = nil,
                artifactPath: String? = nil,
                version: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateGenericArtifactByPathDetails: UpdateGenericArtifactByPathDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.artifactPath = artifactPath
        self.version = version
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateGenericArtifactByPathDetails = updateGenericArtifactByPathDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateGenericArtifactByPathRequest: CustomStringConvertible {
    public var description: String { "UpdateGenericArtifactByPathRequest()" }
}

// MARK: - UpdateGenericArtifactByPathResponse

public struct UpdateGenericArtifactByPathResponse: Codable, Sendable {
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

extension UpdateGenericArtifactByPathResponse: CustomStringConvertible {
    public var description: String { "UpdateGenericArtifactByPathResponse()" }
}