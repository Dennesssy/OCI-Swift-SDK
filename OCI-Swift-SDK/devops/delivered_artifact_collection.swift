import Foundation
import OCICommon

// MARK: - DeliveredArtifactCollection

public struct DeliveredArtifactCollection: Codable, Sendable {

    public var items: [JSONValue]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [JSONValue]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeliveredArtifactCollection: CustomStringConvertible {
    public var description: String { "DeliveredArtifactCollection()" }
}