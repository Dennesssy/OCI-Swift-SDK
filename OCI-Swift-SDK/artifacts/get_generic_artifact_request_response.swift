import Foundation

// MARK: - GetGenericArtifactRequest

public struct GetGenericArtifactRequest: Codable, Sendable {
    public var artifactId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case artifactId, opcRequestId
    }

    public init(
                artifactId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.artifactId = artifactId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGenericArtifactRequest: CustomStringConvertible {
    public var description: String { "GetGenericArtifactRequest()" }
}

// MARK: - GetGenericArtifactResponse

public struct GetGenericArtifactResponse: Codable, Sendable {
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

extension GetGenericArtifactResponse: CustomStringConvertible {
    public var description: String { "GetGenericArtifactResponse()" }
}