import Foundation

// MARK: - ScheduledQueryCollection

public struct ScheduledQueryCollection: Codable, Sendable {

    public var items: [ScheduledQuerySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ScheduledQuerySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScheduledQueryCollection: CustomStringConvertible {
    public var description: String { "ScheduledQueryCollection()" }
}