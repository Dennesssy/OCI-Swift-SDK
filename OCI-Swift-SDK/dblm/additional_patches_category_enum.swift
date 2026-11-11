import Foundation

// MARK: - AdditionalPatchesCategoryEnum

public enum AdditionalPatchesCategoryEnum: String, Codable, Sendable {
    case recommended = "RECOMMENDED"
    case additionalPatch = "ADDITIONAL_PATCH"
}

public extension AdditionalPatchesCategoryEnum {
    static var allValues: [AdditionalPatchesCategoryEnum] { [.recommended, .additionalPatch] }
    static var allStringValues: [String] { ["RECOMMENDED", "ADDITIONAL_PATCH"] }
    static func fromString(_ value: String) -> AdditionalPatchesCategoryEnum? { AdditionalPatchesCategoryEnum(rawValue: value) }
}