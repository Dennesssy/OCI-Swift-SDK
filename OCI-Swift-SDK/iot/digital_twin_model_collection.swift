import Foundation

// MARK: - DigitalTwinModelCollection

public struct DigitalTwinModelCollection: Codable, Sendable {

    public var items: [DigitalTwinModelSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DigitalTwinModelSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DigitalTwinModelCollection: CustomStringConvertible {
    public var description: String { "DigitalTwinModelCollection()" }
}