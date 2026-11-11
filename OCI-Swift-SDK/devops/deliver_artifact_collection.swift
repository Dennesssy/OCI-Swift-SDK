import Foundation

// MARK: - DeliverArtifactCollection

public struct DeliverArtifactCollection: Codable, Sendable {

    public var items: [DeliverArtifact]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeliverArtifact]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeliverArtifactCollection: CustomStringConvertible {
    public var description: String { "DeliverArtifactCollection()" }
}