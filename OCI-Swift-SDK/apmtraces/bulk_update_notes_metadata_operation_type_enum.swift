import Foundation

// MARK: - BulkUpdateNotesMetadataOperationTypeEnum

public enum BulkUpdateNotesMetadataOperationTypeEnum: String, Codable, Sendable {
    case updateNotes = "UPDATE_NOTES"
}

public extension BulkUpdateNotesMetadataOperationTypeEnum {
    static var allValues: [BulkUpdateNotesMetadataOperationTypeEnum] { [.updateNotes] }
    static var allStringValues: [String] { ["UPDATE_NOTES"] }
    static func fromString(_ value: String) -> BulkUpdateNotesMetadataOperationTypeEnum? { BulkUpdateNotesMetadataOperationTypeEnum(rawValue: value) }
}