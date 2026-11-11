import Foundation

// MARK: - SdkLanguageOptionalParametersInputTypeEnum

public enum SdkLanguageOptionalParametersInputTypeEnum: String, Codable, Sendable {
    case enumvalue = "ENUM"
    case email = "EMAIL"
    case uri = "URI"
    case string = "STRING"
}

public extension SdkLanguageOptionalParametersInputTypeEnum {
    static var allValues: [SdkLanguageOptionalParametersInputTypeEnum] { [.enumvalue, .email, .uri, .string] }
    static var allStringValues: [String] { ["ENUM", "EMAIL", "URI", "STRING"] }
    static func fromString(_ value: String) -> SdkLanguageOptionalParametersInputTypeEnum? { SdkLanguageOptionalParametersInputTypeEnum(rawValue: value) }
}