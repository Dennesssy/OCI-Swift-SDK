import Foundation

// MARK: - ContainerRegistryDeliveredArtifact

public struct ContainerRegistryDeliveredArtifact: Codable, Sendable {

    public var deployArtifactId: String?
    public var outputArtifactName: String?
    public var deliveredArtifactHash: String?
    public var imageUri: String?

    private enum CodingKeys: String, CodingKey {
        case deployArtifactId, outputArtifactName, deliveredArtifactHash, imageUri
    }

    public init(
                deployArtifactId: String? = nil,
                outputArtifactName: String? = nil,
                deliveredArtifactHash: String? = nil,
                imageUri: String? = nil
    ) {
        self.deployArtifactId = deployArtifactId
        self.outputArtifactName = outputArtifactName
        self.deliveredArtifactHash = deliveredArtifactHash
        self.imageUri = imageUri
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerRegistryDeliveredArtifact: CustomStringConvertible {
    public var description: String { "ContainerRegistryDeliveredArtifact()" }
}