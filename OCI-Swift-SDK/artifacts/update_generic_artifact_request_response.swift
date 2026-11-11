import Foundation

// MARK: - UpdateGenericArtifactRequest

public struct UpdateGenericArtifactRequest: Codable, Sendable {
    public var artifactId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateGenericArtifactDetails: UpdateGenericArtifactDetails?

    private enum CodingKeys: String, CodingKey {
        case artifactId, ifMatch, opcRequestId, updateGenericArtifactDetails
    }

    public init(
                artifactId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateGenericArtifactDetails: UpdateGenericArtifactDetails? = nil
    ) {
        self.artifactId = artifactId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateGenericArtifactDetails = updateGenericArtifactDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateGenericArtifactRequest: CustomStringConvertible {
    public var description: String { "UpdateGenericArtifactRequest()" }
}

// MARK: - UpdateGenericArtifactResponse

public struct UpdateGenericArtifactResponse: Codable, Sendable {
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

extension UpdateGenericArtifactResponse: CustomStringConvertible {
    public var description: String { "UpdateGenericArtifactResponse()" }
}