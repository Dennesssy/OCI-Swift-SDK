import Foundation

// MARK: - DeliverArtifact

public struct DeliverArtifact: Codable, Sendable {

    public var artifactName: String?
    public var artifactId: String?

    private enum CodingKeys: String, CodingKey {
        case artifactName, artifactId
    }

    public init(
                artifactName: String? = nil,
                artifactId: String? = nil
    ) {
        self.artifactName = artifactName
        self.artifactId = artifactId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeliverArtifact: CustomStringConvertible {
    public var description: String { "DeliverArtifact()" }
}