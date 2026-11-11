import Foundation

// MARK: - TaggingWorkRequestSummaryOperationTypeEnum

public enum TaggingWorkRequestSummaryOperationTypeEnum: String, Codable, Sendable {
    case deleteTagDefinition = "DELETE_TAG_DEFINITION"
    case deleteNonEmptyTagNamespace = "DELETE_NON_EMPTY_TAG_NAMESPACE"
    case bulkDeleteTagDefinition = "BULK_DELETE_TAG_DEFINITION"
    case bulkEditOfTags = "BULK_EDIT_OF_TAGS"
    case importStandardTags = "IMPORT_STANDARD_TAGS"
}

public extension TaggingWorkRequestSummaryOperationTypeEnum {
    static var allValues: [TaggingWorkRequestSummaryOperationTypeEnum] { [.deleteTagDefinition, .deleteNonEmptyTagNamespace, .bulkDeleteTagDefinition, .bulkEditOfTags, .importStandardTags] }
    static var allStringValues: [String] { ["DELETE_TAG_DEFINITION", "DELETE_NON_EMPTY_TAG_NAMESPACE", "BULK_DELETE_TAG_DEFINITION", "BULK_EDIT_OF_TAGS", "IMPORT_STANDARD_TAGS"] }
    static func fromString(_ value: String) -> TaggingWorkRequestSummaryOperationTypeEnum? { TaggingWorkRequestSummaryOperationTypeEnum(rawValue: value) }
}