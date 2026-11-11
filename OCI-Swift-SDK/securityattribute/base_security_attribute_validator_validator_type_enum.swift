import Foundation

// MARK: - BaseSecurityAttributeValidatorValidatorTypeEnum

public enum BaseSecurityAttributeValidatorValidatorTypeEnum: String, Codable, Sendable {
    case enumvalue = "ENUM"
    case `default` = "DEFAULT"
}

public extension BaseSecurityAttributeValidatorValidatorTypeEnum {
    static var allValues: [BaseSecurityAttributeValidatorValidatorTypeEnum] { [.enumvalue, .`default`] }
    static var allStringValues: [String] { ["ENUM", "DEFAULT"] }
    static func fromString(_ value: String) -> BaseSecurityAttributeValidatorValidatorTypeEnum? { BaseSecurityAttributeValidatorValidatorTypeEnum(rawValue: value) }
}