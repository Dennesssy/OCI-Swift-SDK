import Foundation
import OCICommon

// MARK: - UpdateSecurityAttributeNamespaceDetails

public struct UpdateSecurityAttributeNamespaceDetails: Codable, Sendable {

    public var description: String?
    public var isRetired: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, isRetired, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                isRetired: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.isRetired = isRetired
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
