import Foundation

// MARK: - AttributeUpdateResponseAttributeStatusEnum

public enum AttributeUpdateResponseAttributeStatusEnum: String, Codable, Sendable {
    case attributeUpdated = "ATTRIBUTE_UPDATED"
    case duplicateAttribute = "DUPLICATE_ATTRIBUTE"
    case invalidAttribute = "INVALID_ATTRIBUTE"
    case attributeNotProcessed = "ATTRIBUTE_NOT_PROCESSED"
    case attributeDoesNotExist = "ATTRIBUTE_DOES_NOT_EXIST"
    case attributeUpdateNotAllowed = "ATTRIBUTE_UPDATE_NOT_ALLOWED"
}

public extension AttributeUpdateResponseAttributeStatusEnum {
    static var allValues: [AttributeUpdateResponseAttributeStatusEnum] { [.attributeUpdated, .duplicateAttribute, .invalidAttribute, .attributeNotProcessed, .attributeDoesNotExist, .attributeUpdateNotAllowed] }
    static var allStringValues: [String] { ["ATTRIBUTE_UPDATED", "DUPLICATE_ATTRIBUTE", "INVALID_ATTRIBUTE", "ATTRIBUTE_NOT_PROCESSED", "ATTRIBUTE_DOES_NOT_EXIST", "ATTRIBUTE_UPDATE_NOT_ALLOWED"] }
    static func fromString(_ value: String) -> AttributeUpdateResponseAttributeStatusEnum? { AttributeUpdateResponseAttributeStatusEnum(rawValue: value) }
}