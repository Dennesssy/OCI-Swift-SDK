import Foundation

// MARK: - ForkSyncStatusCollection

public struct ForkSyncStatusCollection: Codable, Sendable {

    public var items: [ForkSyncStatusSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ForkSyncStatusSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ForkSyncStatusCollection: CustomStringConvertible {
    public var description: String { "ForkSyncStatusCollection()" }
}