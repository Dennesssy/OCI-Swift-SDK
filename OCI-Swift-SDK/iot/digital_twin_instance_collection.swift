import Foundation

// MARK: - DigitalTwinInstanceCollection

public struct DigitalTwinInstanceCollection: Codable, Sendable {

    public var items: [DigitalTwinInstanceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DigitalTwinInstanceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DigitalTwinInstanceCollection: CustomStringConvertible {
    public var description: String { "DigitalTwinInstanceCollection()" }
}