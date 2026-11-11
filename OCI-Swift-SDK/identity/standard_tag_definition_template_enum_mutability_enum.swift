import Foundation

// MARK: - StandardTagDefinitionTemplateEnumMutabilityEnum

public enum StandardTagDefinitionTemplateEnumMutabilityEnum: String, Codable, Sendable {
    case immutable = "IMMUTABLE"
    case mutable = "MUTABLE"
    case appendable = "APPENDABLE"
}

public extension StandardTagDefinitionTemplateEnumMutabilityEnum {
    static var allValues: [StandardTagDefinitionTemplateEnumMutabilityEnum] { [.immutable, .mutable, .appendable] }
    static var allStringValues: [String] { ["IMMUTABLE", "MUTABLE", "APPENDABLE"] }
    static func fromString(_ value: String) -> StandardTagDefinitionTemplateEnumMutabilityEnum? { StandardTagDefinitionTemplateEnumMutabilityEnum(rawValue: value) }
}