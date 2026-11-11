import Foundation

// MARK: - HelmCommandSpecArtifactSource

public struct HelmCommandSpecArtifactSource: Codable, Sendable {

    public var base64EncodedContent: String?
    public var helmArtifactSourceType: HelmCommandSpecArtifactSourceHelmArtifactSourceTypeEnum

    private enum CodingKeys: String, CodingKey {
        case base64EncodedContent, helmArtifactSourceType
    }

    public init(
                base64EncodedContent: String? = nil,
                helmArtifactSourceType: HelmCommandSpecArtifactSourceHelmArtifactSourceTypeEnum
    ) {
        self.base64EncodedContent = base64EncodedContent
        self.helmArtifactSourceType = helmArtifactSourceType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HelmCommandSpecArtifactSource: CustomStringConvertible {
    public var description: String { "HelmCommandSpecArtifactSource()" }
}