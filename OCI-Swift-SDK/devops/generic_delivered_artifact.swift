import Foundation

// MARK: - GenericDeliveredArtifact

public struct GenericDeliveredArtifact: Codable, Sendable {

    public var deployArtifactId: String?
    public var outputArtifactName: String?
    public var deliveredArtifactId: String?
    public var artifactRepositoryId: String?
    public var path: String?
    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case deployArtifactId, outputArtifactName, deliveredArtifactId, artifactRepositoryId, path, version
    }

    public init(
                deployArtifactId: String? = nil,
                outputArtifactName: String? = nil,
                deliveredArtifactId: String? = nil,
                artifactRepositoryId: String? = nil,
                path: String? = nil,
                version: String? = nil
    ) {
        self.deployArtifactId = deployArtifactId
        self.outputArtifactName = outputArtifactName
        self.deliveredArtifactId = deliveredArtifactId
        self.artifactRepositoryId = artifactRepositoryId
        self.path = path
        self.version = version
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenericDeliveredArtifact: CustomStringConvertible {
    public var description: String { "GenericDeliveredArtifact()" }
}