import Foundation
import OCICommon

// MARK: - CreateZprPolicyDetails

public struct CreateZprPolicyDetails: Codable, Sendable {

    public var compartmentId: String?
    public var description: String?
    public var name: String?
    public var statements: [String]
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, description, name, statements, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                description: String? = nil,
                name: String? = nil,
                statements: [String],
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.description = description
        self.name = name
        self.statements = statements
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
