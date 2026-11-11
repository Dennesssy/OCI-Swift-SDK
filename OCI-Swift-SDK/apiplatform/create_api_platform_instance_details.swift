import Foundation
import OCICommon

// MARK: - CreateApiPlatformInstanceDetails

public struct CreateApiPlatformInstanceDetails: Codable, Sendable {

    public var name: String?
    public var compartmentId: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case name, compartmentId, description, freeformTags, definedTags
    }

    public init(
                name: String? = nil,
                compartmentId: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.name = name
        self.compartmentId = compartmentId
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
