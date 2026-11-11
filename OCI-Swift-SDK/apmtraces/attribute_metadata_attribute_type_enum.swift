import Foundation

// MARK: - AttributeMetadataAttributeTypeEnum

public enum AttributeMetadataAttributeTypeEnum: String, Codable, Sendable {
    case string = "STRING"
    case numeric = "NUMERIC"
}

public extension AttributeMetadataAttributeTypeEnum {
    static var allValues: [AttributeMetadataAttributeTypeEnum] { [.string, .numeric] }
    static var allStringValues: [String] { ["STRING", "NUMERIC"] }
    static func fromString(_ value: String) -> AttributeMetadataAttributeTypeEnum? { AttributeMetadataAttributeTypeEnum(rawValue: value) }
}