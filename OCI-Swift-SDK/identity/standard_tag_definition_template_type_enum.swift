import Foundation

// MARK: - StandardTagDefinitionTemplateTypeEnum

public enum StandardTagDefinitionTemplateTypeEnum: String, Codable, Sendable {
    case enumvalue = "ENUM"
    case string = "STRING"
}

public extension StandardTagDefinitionTemplateTypeEnum {
    static var allValues: [StandardTagDefinitionTemplateTypeEnum] { [.enumvalue, .string] }
    static var allStringValues: [String] { ["ENUM", "STRING"] }
    static func fromString(_ value: String) -> StandardTagDefinitionTemplateTypeEnum? { StandardTagDefinitionTemplateTypeEnum(rawValue: value) }
}