import Foundation

// MARK: - AttributeMetadataAttributeUnitEnum

public enum AttributeMetadataAttributeUnitEnum: String, Codable, Sendable {
    case epochTimeMs = "EPOCH_TIME_MS"
    case bytes = "BYTES"
    case count = "COUNT"
    case durationMs = "DURATION_MS"
    case percentage = "PERCENTAGE"
    case none = "NONE"
}

public extension AttributeMetadataAttributeUnitEnum {
    static var allValues: [AttributeMetadataAttributeUnitEnum] { [.epochTimeMs, .bytes, .count, .durationMs, .percentage, .none] }
    static var allStringValues: [String] { ["EPOCH_TIME_MS", "BYTES", "COUNT", "DURATION_MS", "PERCENTAGE", "NONE"] }
    static func fromString(_ value: String) -> AttributeMetadataAttributeUnitEnum? { AttributeMetadataAttributeUnitEnum(rawValue: value) }
}