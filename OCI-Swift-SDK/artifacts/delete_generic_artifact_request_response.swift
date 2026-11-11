import Foundation

// MARK: - DeleteGenericArtifactRequest

public struct DeleteGenericArtifactRequest: Codable, Sendable {
    public var artifactId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case artifactId, ifMatch, opcRequestId
    }

    public init(
                artifactId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.artifactId = artifactId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteGenericArtifactRequest: CustomStringConvertible {
    public var description: String { "DeleteGenericArtifactRequest()" }
}

// MARK: - DeleteGenericArtifactResponse

public struct DeleteGenericArtifactResponse: Codable, Sendable {
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

extension DeleteGenericArtifactResponse: CustomStringConvertible {
    public var description: String { "DeleteGenericArtifactResponse()" }
}