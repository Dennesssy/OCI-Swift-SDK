import Foundation
import OCICommon

// MARK: - KnowledgeBaseMetadataSummary

public struct KnowledgeBaseMetadataSummary: Codable, Sendable {

    public var name: String?
    public var type: String?
    public var operations: [String]
    public var values: [KnowledgeBaseMetadataValue]
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case name, type, operations, values, freeformTags, definedTags, systemTags
    }

    public init(
                name: String? = nil,
                type: String? = nil,
                operations: [String],
                values: [KnowledgeBaseMetadataValue],
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.name = name
        self.type = type
        self.operations = operations
        self.values = values
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KnowledgeBaseMetadataSummary: CustomStringConvertible {
    public var description: String { "KnowledgeBaseMetadataSummary()" }
}