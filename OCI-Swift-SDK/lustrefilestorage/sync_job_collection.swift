import Foundation

// MARK: - SyncJobCollection

public struct SyncJobCollection: Codable, Sendable {

    public var items: [SyncJobSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SyncJobSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SyncJobCollection: CustomStringConvertible {
    public var description: String { "SyncJobCollection()" }
}