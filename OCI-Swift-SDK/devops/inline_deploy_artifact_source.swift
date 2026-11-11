import Foundation

// MARK: - InlineDeployArtifactSource

public struct InlineDeployArtifactSource: Codable, Sendable {

    public var base64EncodedContent: Data

    private enum CodingKeys: String, CodingKey {
        case base64EncodedContent
    }

    public init(
                base64EncodedContent: Data
    ) {
        self.base64EncodedContent = base64EncodedContent
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InlineDeployArtifactSource: CustomStringConvertible {
    public var description: String { "InlineDeployArtifactSource()" }
}