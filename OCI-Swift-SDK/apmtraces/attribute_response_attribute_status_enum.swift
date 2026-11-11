import Foundation

// MARK: - AttributeResponseAttributeStatusEnum

public enum AttributeResponseAttributeStatusEnum: String, Codable, Sendable {
    case attributeAlreadyActive = "ATTRIBUTE_ALREADY_ACTIVE"
    case attributeActivated = "ATTRIBUTE_ACTIVATED"
    case attributeDeactivated = "ATTRIBUTE_DEACTIVATED"
    case deactivationNotAllowed = "DEACTIVATION_NOT_ALLOWED"
    case attributeDoesNotExist = "ATTRIBUTE_DOES_NOT_EXIST"
    case attributeAlreadyDeactivated = "ATTRIBUTE_ALREADY_DEACTIVATED"
    case duplicateAttribute = "DUPLICATE_ATTRIBUTE"
    case invalidAttribute = "INVALID_ATTRIBUTE"
    case invalidAttributeTypeConflict = "INVALID_ATTRIBUTE_TYPE_CONFLICT"
    case attributeNotProcessed = "ATTRIBUTE_NOT_PROCESSED"
    case attributeUpdateNotAllowed = "ATTRIBUTE_UPDATE_NOT_ALLOWED"
}

public extension AttributeResponseAttributeStatusEnum {
    static var allValues: [AttributeResponseAttributeStatusEnum] { [.attributeAlreadyActive, .attributeActivated, .attributeDeactivated, .deactivationNotAllowed, .attributeDoesNotExist, .attributeAlreadyDeactivated, .duplicateAttribute, .invalidAttribute, .invalidAttributeTypeConflict, .attributeNotProcessed, .attributeUpdateNotAllowed] }
    static var allStringValues: [String] { ["ATTRIBUTE_ALREADY_ACTIVE", "ATTRIBUTE_ACTIVATED", "ATTRIBUTE_DEACTIVATED", "DEACTIVATION_NOT_ALLOWED", "ATTRIBUTE_DOES_NOT_EXIST", "ATTRIBUTE_ALREADY_DEACTIVATED", "DUPLICATE_ATTRIBUTE", "INVALID_ATTRIBUTE", "INVALID_ATTRIBUTE_TYPE_CONFLICT", "ATTRIBUTE_NOT_PROCESSED", "ATTRIBUTE_UPDATE_NOT_ALLOWED"] }
    static func fromString(_ value: String) -> AttributeResponseAttributeStatusEnum? { AttributeResponseAttributeStatusEnum(rawValue: value) }
}