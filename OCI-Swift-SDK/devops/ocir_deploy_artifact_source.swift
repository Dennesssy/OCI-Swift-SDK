import Foundation

// MARK: - OcirDeployArtifactSource

public struct OcirDeployArtifactSource: Codable, Sendable {

    public var imageUri: String?
    public var imageDigest: String?

    private enum CodingKeys: String, CodingKey {
        case imageUri, imageDigest
    }

    public init(
                imageUri: String? = nil,
                imageDigest: String? = nil
    ) {
        self.imageUri = imageUri
        self.imageDigest = imageDigest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OcirDeployArtifactSource: CustomStringConvertible {
    public var description: String { "OcirDeployArtifactSource()" }
}