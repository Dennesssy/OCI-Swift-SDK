import Foundation
import OCICommon

// MARK: - UpdateScriptDetails

public struct UpdateScriptDetails: Codable, Sendable {

    public var displayName: String?
    public var contentType: ContentTypesEnum?
    public var content: String?
    public var contentFileName: String?
    public var parameters: [ScriptParameter]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, contentType, content, contentFileName, parameters, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                contentType: ContentTypesEnum? = nil,
                content: String? = nil,
                contentFileName: String? = nil,
                parameters: [ScriptParameter]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.contentType = contentType
        self.content = content
        self.contentFileName = contentFileName
        self.parameters = parameters
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateScriptDetails: CustomStringConvertible {
    public var description: String { "UpdateScriptDetails()" }
}