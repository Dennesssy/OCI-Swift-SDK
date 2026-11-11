import Foundation

// MARK: - ProvisionedCapacityCollection

public struct ProvisionedCapacityCollection: Codable, Sendable {

    public var items: [ProvisionedCapacitySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ProvisionedCapacitySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ProvisionedCapacityCollection: CustomStringConvertible {
    public var description: String { "ProvisionedCapacityCollection()" }
}