import Foundation

// MARK: - MulticloudSubscriptionCollection

public struct MulticloudSubscriptionCollection: Codable, Sendable {

    public var items: [MulticloudSubscriptionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [MulticloudSubscriptionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MulticloudSubscriptionCollection: CustomStringConvertible {
    public var description: String { "MulticloudSubscriptionCollection()" }
}