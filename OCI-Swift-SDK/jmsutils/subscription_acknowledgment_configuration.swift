import Foundation

// MARK: - SubscriptionAcknowledgmentConfiguration

public struct SubscriptionAcknowledgmentConfiguration: Codable, Sendable {

    public var isAcknowledged: Bool?
    public var acknowledgedBy: String?
    public var timeAcknowledged: Date?

    private enum CodingKeys: String, CodingKey {
        case isAcknowledged, acknowledgedBy, timeAcknowledged
    }

    public init(
                isAcknowledged: Bool? = nil,
                acknowledgedBy: String? = nil,
                timeAcknowledged: Date? = nil
    ) {
        self.isAcknowledged = isAcknowledged
        self.acknowledgedBy = acknowledgedBy
        self.timeAcknowledged = timeAcknowledged
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SubscriptionAcknowledgmentConfiguration: CustomStringConvertible {
    public var description: String { "SubscriptionAcknowledgmentConfiguration()" }
}