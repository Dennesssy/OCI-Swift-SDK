import Foundation

// MARK: - ApiSchemaInputLocationApiSchemaInputLocationTypeEnum

public enum ApiSchemaInputLocationApiSchemaInputLocationTypeEnum: String, Codable, Sendable {
    case inline = "INLINE"
    case objectStorageLocation = "OBJECT_STORAGE_LOCATION"
}

public extension ApiSchemaInputLocationApiSchemaInputLocationTypeEnum {
    static var allValues: [ApiSchemaInputLocationApiSchemaInputLocationTypeEnum] { [.inline, .objectStorageLocation] }
    static var allStringValues: [String] { ["INLINE", "OBJECT_STORAGE_LOCATION"] }
    static func fromString(_ value: String) -> ApiSchemaInputLocationApiSchemaInputLocationTypeEnum? { ApiSchemaInputLocationApiSchemaInputLocationTypeEnum(rawValue: value) }
}