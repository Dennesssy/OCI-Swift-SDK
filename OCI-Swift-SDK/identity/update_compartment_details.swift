import Foundation
import OCICommon

// MARK: - UpdateCompartmentDetails

public struct UpdateCompartmentDetails: Codable, Sendable {

    public var description: String?
    public var name: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, name, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                name: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.name = name
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
