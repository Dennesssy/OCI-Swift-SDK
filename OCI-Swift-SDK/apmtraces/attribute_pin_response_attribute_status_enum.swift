import Foundation

// MARK: - AttributePinResponseAttributeStatusEnum

public enum AttributePinResponseAttributeStatusEnum: String, Codable, Sendable {
    case attributeAlreadyPinned = "ATTRIBUTE_ALREADY_PINNED"
    case attributePinned = "ATTRIBUTE_PINNED"
    case pinNotAllowed = "PIN_NOT_ALLOWED"
    case duplicateAttribute = "DUPLICATE_ATTRIBUTE"
    case invalidAttribute = "INVALID_ATTRIBUTE"
    case attributeNotProcessed = "ATTRIBUTE_NOT_PROCESSED"
}

public extension AttributePinResponseAttributeStatusEnum {
    static var allValues: [AttributePinResponseAttributeStatusEnum] { [.attributeAlreadyPinned, .attributePinned, .pinNotAllowed, .duplicateAttribute, .invalidAttribute, .attributeNotProcessed] }
    static var allStringValues: [String] { ["ATTRIBUTE_ALREADY_PINNED", "ATTRIBUTE_PINNED", "PIN_NOT_ALLOWED", "DUPLICATE_ATTRIBUTE", "INVALID_ATTRIBUTE", "ATTRIBUTE_NOT_PROCESSED"] }
    static func fromString(_ value: String) -> AttributePinResponseAttributeStatusEnum? { AttributePinResponseAttributeStatusEnum(rawValue: value) }
}