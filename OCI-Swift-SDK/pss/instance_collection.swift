import Foundation

// MARK: - InstanceCollection

public struct InstanceCollection: Codable, Sendable {

    public var items: [InstanceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [InstanceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InstanceCollection: CustomStringConvertible {
    public var description: String { "InstanceCollection()" }
}