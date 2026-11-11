import Foundation
import OCICommon

// MARK: - CreateGroupDetails

public struct CreateGroupDetails: Codable, Sendable {

    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, name, description, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
