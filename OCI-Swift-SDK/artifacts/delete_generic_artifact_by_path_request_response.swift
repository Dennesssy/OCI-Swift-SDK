import Foundation

// MARK: - DeleteGenericArtifactByPathRequest

public struct DeleteGenericArtifactByPathRequest: Codable, Sendable {
    public var repositoryId: String?
    public var artifactPath: String?
    public var version: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, artifactPath, version, ifMatch, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                artifactPath: String? = nil,
                version: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.artifactPath = artifactPath
        self.version = version
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteGenericArtifactByPathRequest: CustomStringConvertible {
    public var description: String { "DeleteGenericArtifactByPathRequest()" }
}

// MARK: - DeleteGenericArtifactByPathResponse

public struct DeleteGenericArtifactByPathResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteGenericArtifactByPathResponse: CustomStringConvertible {
    public var description: String { "DeleteGenericArtifactByPathResponse()" }
}