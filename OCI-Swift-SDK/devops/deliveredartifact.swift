import Foundation

// MARK: - deliveredartifact

public struct deliveredartifact: Codable, Sendable {

    public var jsonData: Data?
    public var deployArtifactId: String?
    public var outputArtifactName: String?
    public var artifactType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, deployArtifactId, outputArtifactName, artifactType
    }

    public init(
                jsonData: Data? = nil,
                deployArtifactId: String? = nil,
                outputArtifactName: String? = nil,
                artifactType: String? = nil
    ) {
        self.jsonData = jsonData
        self.deployArtifactId = deployArtifactId
        self.outputArtifactName = outputArtifactName
        self.artifactType = artifactType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension deliveredartifact: CustomStringConvertible {
    public var description: String { "deliveredartifact()" }
}