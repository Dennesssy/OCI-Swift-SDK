import Foundation

// MARK: - GenericDeployArtifactSource

public struct GenericDeployArtifactSource: Codable, Sendable {

    public var repositoryId: String?
    public var deployArtifactPath: String?
    public var deployArtifactVersion: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, deployArtifactPath, deployArtifactVersion
    }

    public init(
                repositoryId: String? = nil,
                deployArtifactPath: String? = nil,
                deployArtifactVersion: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.deployArtifactPath = deployArtifactPath
        self.deployArtifactVersion = deployArtifactVersion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenericDeployArtifactSource: CustomStringConvertible {
    public var description: String { "GenericDeployArtifactSource()" }
}