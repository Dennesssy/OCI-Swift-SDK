import Foundation

// MARK: - TagMetadataTagTypeEnum

public enum TagMetadataTagTypeEnum: String, Codable, Sendable {
    case string = "STRING"
    case numeric = "NUMERIC"
}

public extension TagMetadataTagTypeEnum {
    static var allValues: [TagMetadataTagTypeEnum] { [.string, .numeric] }
    static var allStringValues: [String] { ["STRING", "NUMERIC"] }
    static func fromString(_ value: String) -> TagMetadataTagTypeEnum? { TagMetadataTagTypeEnum(rawValue: value) }
}