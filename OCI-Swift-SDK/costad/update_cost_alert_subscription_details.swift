import Foundation
import OCICommon

// MARK: - UpdateCostAlertSubscriptionDetails

public struct UpdateCostAlertSubscriptionDetails: Codable, Sendable {

    public var description: String?
    public var channels: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case description, channels, definedTags, freeformTags
    }

    public init(
                description: String? = nil,
                channels: String? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.description = description
        self.channels = channels
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
