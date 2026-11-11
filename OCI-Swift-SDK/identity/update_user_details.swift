import Foundation
import OCICommon

// MARK: - UpdateUserDetails

public struct UpdateUserDetails: Codable, Sendable {

    public var description: String?
    public var email: String?
    public var dbUserName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, email, dbUserName, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                email: String? = nil,
                dbUserName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.email = email
        self.dbUserName = dbUserName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
