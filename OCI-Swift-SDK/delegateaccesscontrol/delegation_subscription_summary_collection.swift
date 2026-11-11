import Foundation

// MARK: - DelegationSubscriptionSummaryCollection

public struct DelegationSubscriptionSummaryCollection: Codable, Sendable {

    public var items: [DelegationSubscriptionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DelegationSubscriptionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegationSubscriptionSummaryCollection: CustomStringConvertible {
    public var description: String { "DelegationSubscriptionSummaryCollection()" }
}