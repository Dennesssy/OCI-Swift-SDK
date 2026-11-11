import Foundation
import OCICommon

// MARK: - CreateDataIngestionJobDetails

public struct CreateDataIngestionJobDetails: Codable, Sendable {

    public var dataSourceId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case dataSourceId, compartmentId, displayName, description, freeformTags, definedTags
    }

    public init(
                dataSourceId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.dataSourceId = dataSourceId
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
