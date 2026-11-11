import Foundation
import OCICommon

// MARK: - CreateProvisionedCapacityDetails

public struct CreateProvisionedCapacityDetails: Codable, Sendable {

    public var displayName: String?
    public var numberOfUnits: Int?
    public var compartmentId: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, numberOfUnits, compartmentId, description, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                numberOfUnits: Int? = nil,
                compartmentId: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.numberOfUnits = numberOfUnits
        self.compartmentId = compartmentId
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
