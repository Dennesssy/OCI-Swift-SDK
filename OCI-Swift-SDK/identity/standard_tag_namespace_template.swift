import Foundation

// MARK: - StandardTagNamespaceTemplate

public struct StandardTagNamespaceTemplate: Codable, Sendable {

    public var description: String?
    public var standardTagNamespaceName: String?
    public var tagDefinitionTemplates: [StandardTagDefinitionTemplate]
    public var status: String?

    private enum CodingKeys: String, CodingKey {
        case description, standardTagNamespaceName, tagDefinitionTemplates, status
    }

    public init(
                description: String? = nil,
                standardTagNamespaceName: String? = nil,
                tagDefinitionTemplates: [StandardTagDefinitionTemplate],
                status: String? = nil
    ) {
        self.description = description
        self.standardTagNamespaceName = standardTagNamespaceName
        self.tagDefinitionTemplates = tagDefinitionTemplates
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
