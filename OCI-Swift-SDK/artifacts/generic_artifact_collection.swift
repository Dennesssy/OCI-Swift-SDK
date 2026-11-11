import Foundation

// MARK: - GenericArtifactCollection

public struct GenericArtifactCollection: Codable, Sendable {

    public var items: [GenericArtifactSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [GenericArtifactSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenericArtifactCollection: CustomStringConvertible {
    public var description: String { "GenericArtifactCollection()" }
}