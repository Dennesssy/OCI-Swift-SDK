import Foundation
import OCICommon

// MARK: - UpdateDataSourceDetails

public struct UpdateDataSourceDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var dataSourceConfig: JSONValue?
    public var metadata: [String: String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, dataSourceConfig, metadata, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                dataSourceConfig: JSONValue? = nil,
                metadata: [String: String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.dataSourceConfig = dataSourceConfig
        self.metadata = metadata
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
