import Foundation

// MARK: - CostAlertSubscriptionCollection

public struct CostAlertSubscriptionCollection: Codable, Sendable {

    public var items: [CostAlertSubscriptionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [CostAlertSubscriptionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CostAlertSubscriptionCollection: CustomStringConvertible {
    public var description: String { "CostAlertSubscriptionCollection()" }
}