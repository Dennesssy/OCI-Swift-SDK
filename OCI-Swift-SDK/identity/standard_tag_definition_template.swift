import Foundation

// MARK: - StandardTagDefinitionTemplate

public struct StandardTagDefinitionTemplate: Codable, Sendable {

    public var description: String?
    public var tagDefinitionName: String?
    public var type: StandardTagDefinitionTemplateTypeEnum
    public var isCostTracking: Bool?
    public var possibleValues: [String]?
    public var enumMutability: StandardTagDefinitionTemplateEnumMutabilityEnum?

    private enum CodingKeys: String, CodingKey {
        case description, tagDefinitionName, type, isCostTracking, possibleValues, enumMutability
    }

    public init(
                description: String? = nil,
                tagDefinitionName: String? = nil,
                type: StandardTagDefinitionTemplateTypeEnum,
                isCostTracking: Bool? = nil,
                possibleValues: [String]? = nil,
                enumMutability: StandardTagDefinitionTemplateEnumMutabilityEnum? = nil
    ) {
        self.description = description
        self.tagDefinitionName = tagDefinitionName
        self.type = type
        self.isCostTracking = isCostTracking
        self.possibleValues = possibleValues
        self.enumMutability = enumMutability
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
