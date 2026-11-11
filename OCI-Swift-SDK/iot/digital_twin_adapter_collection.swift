import Foundation

// MARK: - DigitalTwinAdapterCollection

public struct DigitalTwinAdapterCollection: Codable, Sendable {

    public var items: [DigitalTwinAdapterSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DigitalTwinAdapterSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DigitalTwinAdapterCollection: CustomStringConvertible {
    public var description: String { "DigitalTwinAdapterCollection()" }
}