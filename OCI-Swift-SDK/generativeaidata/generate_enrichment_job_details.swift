import Foundation
import OCICommon

// MARK: - GenerateEnrichmentJobDetails

public struct GenerateEnrichmentJobDetails: Codable, Sendable {

    public var enrichmentJobConfiguration: JSONValue
    public var description: String?
    public var displayName: String?
    public var enrichmentJobType: EnrichmentJobTypeEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case enrichmentJobConfiguration, description, displayName, enrichmentJobType, freeformTags, definedTags
    }

    public init(
                enrichmentJobConfiguration: JSONValue,
                description: String? = nil,
                displayName: String? = nil,
                enrichmentJobType: EnrichmentJobTypeEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.enrichmentJobConfiguration = enrichmentJobConfiguration
        self.description = description
        self.displayName = displayName
        self.enrichmentJobType = enrichmentJobType
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
