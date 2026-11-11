import Foundation

// MARK: - UpdateSubscriptionAcknowledgmentConfigurationDetails

public struct UpdateSubscriptionAcknowledgmentConfigurationDetails: Codable, Sendable {

    public var isAcknowledged: Bool?

    private enum CodingKeys: String, CodingKey {
        case isAcknowledged
    }

    public init(
                isAcknowledged: Bool? = nil
    ) {
        self.isAcknowledged = isAcknowledged
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSubscriptionAcknowledgmentConfigurationDetails: CustomStringConvertible {
    public var description: String { "UpdateSubscriptionAcknowledgmentConfigurationDetails()" }
}