import Foundation

// MARK: - AttributeUpdateNotesResponseAttributeStatusEnum

public enum AttributeUpdateNotesResponseAttributeStatusEnum: String, Codable, Sendable {
    case attributeNotesUpdated = "ATTRIBUTE_NOTES_UPDATED"
    case duplicateAttribute = "DUPLICATE_ATTRIBUTE"
    case invalidAttribute = "INVALID_ATTRIBUTE"
    case attributeNotProcessed = "ATTRIBUTE_NOT_PROCESSED"
    case attributeDoesNotExist = "ATTRIBUTE_DOES_NOT_EXIST"
    case notesTooLong = "NOTES_TOO_LONG"
}

public extension AttributeUpdateNotesResponseAttributeStatusEnum {
    static var allValues: [AttributeUpdateNotesResponseAttributeStatusEnum] { [.attributeNotesUpdated, .duplicateAttribute, .invalidAttribute, .attributeNotProcessed, .attributeDoesNotExist, .notesTooLong] }
    static var allStringValues: [String] { ["ATTRIBUTE_NOTES_UPDATED", "DUPLICATE_ATTRIBUTE", "INVALID_ATTRIBUTE", "ATTRIBUTE_NOT_PROCESSED", "ATTRIBUTE_DOES_NOT_EXIST", "NOTES_TOO_LONG"] }
    static func fromString(_ value: String) -> AttributeUpdateNotesResponseAttributeStatusEnum? { AttributeUpdateNotesResponseAttributeStatusEnum(rawValue: value) }
}