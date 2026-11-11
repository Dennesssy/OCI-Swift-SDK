import Foundation

// MARK: - AttributeUnpinResponseAttributeStatusEnum

public enum AttributeUnpinResponseAttributeStatusEnum: String, Codable, Sendable {
    case attributeUnpinned = "ATTRIBUTE_UNPINNED"
    case duplicateAttribute = "DUPLICATE_ATTRIBUTE"
    case invalidAttribute = "INVALID_ATTRIBUTE"
    case attributeNotFound = "ATTRIBUTE_NOT_FOUND"
    case attributeNotProcessed = "ATTRIBUTE_NOT_PROCESSED"
}

public extension AttributeUnpinResponseAttributeStatusEnum {
    static var allValues: [AttributeUnpinResponseAttributeStatusEnum] { [.attributeUnpinned, .duplicateAttribute, .invalidAttribute, .attributeNotFound, .attributeNotProcessed] }
    static var allStringValues: [String] { ["ATTRIBUTE_UNPINNED", "DUPLICATE_ATTRIBUTE", "INVALID_ATTRIBUTE", "ATTRIBUTE_NOT_FOUND", "ATTRIBUTE_NOT_PROCESSED"] }
    static func fromString(_ value: String) -> AttributeUnpinResponseAttributeStatusEnum? { AttributeUnpinResponseAttributeStatusEnum(rawValue: value) }
}