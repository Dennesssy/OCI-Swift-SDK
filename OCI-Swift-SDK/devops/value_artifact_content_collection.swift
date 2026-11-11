import Foundation

// MARK: - ValueArtifactContentCollection

public struct ValueArtifactContentCollection: Codable, Sendable {

    public var items: [ValueArtifactContent]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ValueArtifactContent]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValueArtifactContentCollection: CustomStringConvertible {
    public var description: String { "ValueArtifactContentCollection()" }
}