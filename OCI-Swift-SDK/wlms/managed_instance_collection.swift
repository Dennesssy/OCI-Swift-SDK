import Foundation

// MARK: - ManagedInstanceCollection

public struct ManagedInstanceCollection: Codable, Sendable {

    public var items: [ManagedInstanceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ManagedInstanceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ManagedInstanceCollection: CustomStringConvertible {
    public var description: String { "ManagedInstanceCollection()" }
}