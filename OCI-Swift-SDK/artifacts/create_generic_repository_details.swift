import Foundation
import OCICommon

// MARK: - CreateGenericRepositoryDetails

public struct CreateGenericRepositoryDetails: Codable, Sendable {

    public var compartmentId: String?
    public var isImmutable: Bool?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, isImmutable, displayName, description, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                isImmutable: Bool? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.isImmutable = isImmutable
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
