import Foundation
import OCICommon

// MARK: - UpdatePrivateServiceAccessDetails

public struct UpdatePrivateServiceAccessDetails: Codable, Sendable {

    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var displayName: String?
    public var description: String?
    public var nsgIds: [String]?

    private enum CodingKeys: String, CodingKey {
        case definedTags, freeformTags, securityAttributes, displayName, description, nsgIds
    }

    public init(
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil,
                displayName: String? = nil,
                description: String? = nil,
                nsgIds: [String]? = nil
    ) {
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.securityAttributes = securityAttributes
        self.displayName = displayName
        self.description = description
        self.nsgIds = nsgIds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
