import Foundation

// MARK: - SubscriberCollection

public struct SubscriberCollection: Codable, Sendable {

    public var items: [SubscriberSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SubscriberSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SubscriberCollection: CustomStringConvertible {
    public var description: String { "SubscriberCollection()" }
}