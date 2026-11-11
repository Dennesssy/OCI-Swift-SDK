import Foundation

// MARK: - DigitalTwinRelationshipCollection

public struct DigitalTwinRelationshipCollection: Codable, Sendable {

    public var items: [DigitalTwinRelationshipSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DigitalTwinRelationshipSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DigitalTwinRelationshipCollection: CustomStringConvertible {
    public var description: String { "DigitalTwinRelationshipCollection()" }
}