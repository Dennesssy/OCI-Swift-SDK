import Foundation
import OCICommon

// MARK: - ApiMetadataByEntityTypeSummary

public struct ApiMetadataByEntityTypeSummary: Codable, Sendable {

    public var compartmentId: String?
    public var entityType: String?
    public var apiMetadatas: [ApiMetadataSummary]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, entityType, apiMetadatas, freeformTags, definedTags, systemTags
    }

    public init(
                compartmentId: String? = nil,
                entityType: String? = nil,
                apiMetadatas: [ApiMetadataSummary]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.entityType = entityType
        self.apiMetadatas = apiMetadatas
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiMetadataByEntityTypeSummary: CustomStringConvertible {
    public var description: String { "ApiMetadataByEntityTypeSummary()" }
}