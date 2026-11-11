import Foundation

// MARK: - ResourceAnalyticsInstanceCollection

public struct ResourceAnalyticsInstanceCollection: Codable, Sendable {

    public var items: [ResourceAnalyticsInstanceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ResourceAnalyticsInstanceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceAnalyticsInstanceCollection: CustomStringConvertible {
    public var description: String { "ResourceAnalyticsInstanceCollection()" }
}