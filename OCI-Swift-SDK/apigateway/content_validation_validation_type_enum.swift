import Foundation

// MARK: - ContentValidationValidationTypeEnum

public enum ContentValidationValidationTypeEnum: String, Codable, Sendable {
    case none = "NONE"
}

public extension ContentValidationValidationTypeEnum {
    static var allValues: [ContentValidationValidationTypeEnum] { [.none] }
    static var allStringValues: [String] { ["NONE"] }
    static func fromString(_ value: String) -> ContentValidationValidationTypeEnum? { ContentValidationValidationTypeEnum(rawValue: value) }
}