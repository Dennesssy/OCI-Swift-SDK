import Foundation

// MARK: - AttributeUpdateNotesResponseOperationTypeEnum

public enum AttributeUpdateNotesResponseOperationTypeEnum: String, Codable, Sendable {
    case updateNotes = "UPDATE_NOTES"
}

public extension AttributeUpdateNotesResponseOperationTypeEnum {
    static var allValues: [AttributeUpdateNotesResponseOperationTypeEnum] { [.updateNotes] }
    static var allStringValues: [String] { ["UPDATE_NOTES"] }
    static func fromString(_ value: String) -> AttributeUpdateNotesResponseOperationTypeEnum? { AttributeUpdateNotesResponseOperationTypeEnum(rawValue: value) }
}