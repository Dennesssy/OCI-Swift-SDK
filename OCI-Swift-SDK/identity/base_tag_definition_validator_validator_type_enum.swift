import Foundation

// MARK: - BaseTagDefinitionValidatorValidatorTypeEnum

public enum BaseTagDefinitionValidatorValidatorTypeEnum: String, Codable, Sendable {
    case enumvalue = "ENUM"
    case `default` = "DEFAULT"
}

public extension BaseTagDefinitionValidatorValidatorTypeEnum {
    static var allValues: [BaseTagDefinitionValidatorValidatorTypeEnum] { [.enumvalue, .`default`] }
    static var allStringValues: [String] { ["ENUM", "DEFAULT"] }
    static func fromString(_ value: String) -> BaseTagDefinitionValidatorValidatorTypeEnum? { BaseTagDefinitionValidatorValidatorTypeEnum(rawValue: value) }
}