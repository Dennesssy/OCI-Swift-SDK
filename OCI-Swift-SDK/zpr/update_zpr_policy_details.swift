import Foundation
import OCICommon

// MARK: - UpdateZprPolicyDetails

public struct UpdateZprPolicyDetails: Codable, Sendable {

    public var description: String?
    public var statements: [String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, statements, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                statements: [String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.statements = statements
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
