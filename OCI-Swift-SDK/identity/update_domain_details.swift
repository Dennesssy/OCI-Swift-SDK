import Foundation
import OCICommon

// MARK: - UpdateDomainDetails

public struct UpdateDomainDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var isHiddenOnLogin: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, isHiddenOnLogin, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                isHiddenOnLogin: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.isHiddenOnLogin = isHiddenOnLogin
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
