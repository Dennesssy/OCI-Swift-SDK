import Foundation

// MARK: - NotificationCollection

public struct NotificationCollection: Codable, Sendable {

    public var items: [NotificationSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [NotificationSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NotificationCollection: CustomStringConvertible {
    public var description: String { "NotificationCollection()" }
}