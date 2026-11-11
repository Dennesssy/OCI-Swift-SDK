import Foundation

// MARK: - PatchDatabasesCollection

public struct PatchDatabasesCollection: Codable, Sendable {

    public var items: [DatabasesSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DatabasesSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchDatabasesCollection: CustomStringConvertible {
    public var description: String { "PatchDatabasesCollection()" }
}