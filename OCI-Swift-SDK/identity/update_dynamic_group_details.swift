import Foundation
import OCICommon

// MARK: - UpdateDynamicGroupDetails

public struct UpdateDynamicGroupDetails: Codable, Sendable {

    public var description: String?
    public var matchingRule: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, matchingRule, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                matchingRule: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.matchingRule = matchingRule
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
