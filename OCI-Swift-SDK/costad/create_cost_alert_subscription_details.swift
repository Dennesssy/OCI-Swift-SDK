import Foundation
import OCICommon

// MARK: - CreateCostAlertSubscriptionDetails

public struct CreateCostAlertSubscriptionDetails: Codable, Sendable {

    public var compartmentId: String?
    public var name: String?
    public var channels: String?
    public var description: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, name, channels, description, definedTags, freeformTags
    }

    public init(
                compartmentId: String? = nil,
                name: String? = nil,
                channels: String? = nil,
                description: String? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.compartmentId = compartmentId
        self.name = name
        self.channels = channels
        self.description = description
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
