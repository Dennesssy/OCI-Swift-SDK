import Foundation

// MARK: - MulticloudAlertCollection

public struct MulticloudAlertCollection: Codable, Sendable {

    public var items: [MulticloudAlertSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [MulticloudAlertSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MulticloudAlertCollection: CustomStringConvertible {
    public var description: String { "MulticloudAlertCollection()" }
}