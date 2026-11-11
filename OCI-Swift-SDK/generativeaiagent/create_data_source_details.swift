import Foundation
import OCICommon

// MARK: - CreateDataSourceDetails

public struct CreateDataSourceDetails: Codable, Sendable {

    public var knowledgeBaseId: String?
    public var dataSourceConfig: JSONValue
    public var compartmentId: String?
    public var displayName: String?
    public var description: String?
    public var metadata: [String: String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case knowledgeBaseId, dataSourceConfig, compartmentId, displayName, description, metadata, freeformTags, definedTags
    }

    public init(
                knowledgeBaseId: String? = nil,
                dataSourceConfig: JSONValue,
                compartmentId: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                metadata: [String: String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.knowledgeBaseId = knowledgeBaseId
        self.dataSourceConfig = dataSourceConfig
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.description = description
        self.metadata = metadata
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
