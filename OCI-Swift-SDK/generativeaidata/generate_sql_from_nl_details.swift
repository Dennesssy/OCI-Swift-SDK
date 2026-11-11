import Foundation
import OCICommon

// MARK: - GenerateSqlFromNlDetails

public struct GenerateSqlFromNlDetails: Codable, Sendable {

    public var inputNaturalLanguageQuery: String?
    public var description: String?
    public var displayName: String?
    public var modelId: String?
    public var completionMode: CompletionModeEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case inputNaturalLanguageQuery, description, displayName, modelId, completionMode, freeformTags, definedTags
    }

    public init(
                inputNaturalLanguageQuery: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                modelId: String? = nil,
                completionMode: CompletionModeEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.inputNaturalLanguageQuery = inputNaturalLanguageQuery
        self.description = description
        self.displayName = displayName
        self.modelId = modelId
        self.completionMode = completionMode
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
