import Foundation
import OCICommon

// MARK: - UpdateProvisionedCapacityDetails

public struct UpdateProvisionedCapacityDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var numberOfUnits: Int?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, numberOfUnits, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                numberOfUnits: Int? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.numberOfUnits = numberOfUnits
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
