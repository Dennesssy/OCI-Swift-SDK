import Foundation

// MARK: - BulkUpdateNotesMetadataOperationStatusEnum

public enum BulkUpdateNotesMetadataOperationStatusEnum: String, Codable, Sendable {
    case success = "SUCCESS"
    case emptyAttributeList = "EMPTY_ATTRIBUTE_LIST"
    case invalidBulkRequest = "INVALID_BULK_REQUEST"
}

public extension BulkUpdateNotesMetadataOperationStatusEnum {
    static var allValues: [BulkUpdateNotesMetadataOperationStatusEnum] { [.success, .emptyAttributeList, .invalidBulkRequest] }
    static var allStringValues: [String] { ["SUCCESS", "EMPTY_ATTRIBUTE_LIST", "INVALID_BULK_REQUEST"] }
    static func fromString(_ value: String) -> BulkUpdateNotesMetadataOperationStatusEnum? { BulkUpdateNotesMetadataOperationStatusEnum(rawValue: value) }
}