import Foundation
import OCICommon

// MARK: - CreatePolicyDetails

public struct CreatePolicyDetails: Codable, Sendable {

    public var compartmentId: String?
    public var name: String?
    public var statements: [String]
    public var description: String?
    public var versionDate: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, name, statements, description, versionDate, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                name: String? = nil,
                statements: [String],
                description: String? = nil,
                versionDate: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.name = name
        self.statements = statements
        self.description = description
        self.versionDate = versionDate
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
