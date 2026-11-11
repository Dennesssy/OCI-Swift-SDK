import Foundation
import OCICommon

// MARK: - CreateIotDomainGroupDetails

public struct CreateIotDomainGroupDetails: Codable, Sendable {

    public var compartmentId: String?
    public var type: CreateIotDomainGroupDetailsTypeEnum?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, type, displayName, description, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                type: CreateIotDomainGroupDetailsTypeEnum? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.type = type
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
