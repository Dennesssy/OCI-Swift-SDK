import Foundation

// MARK: - BulkUpdateAttributeMetadataOperationStatusEnum

public enum BulkUpdateAttributeMetadataOperationStatusEnum: String, Codable, Sendable {
    case success = "SUCCESS"
    case emptyAttributeList = "EMPTY_ATTRIBUTE_LIST"
    case invalidBulkRequest = "INVALID_BULK_REQUEST"
}

public extension BulkUpdateAttributeMetadataOperationStatusEnum {
    static var allValues: [BulkUpdateAttributeMetadataOperationStatusEnum] { [.success, .emptyAttributeList, .invalidBulkRequest] }
    static var allStringValues: [String] { ["SUCCESS", "EMPTY_ATTRIBUTE_LIST", "INVALID_BULK_REQUEST"] }
    static func fromString(_ value: String) -> BulkUpdateAttributeMetadataOperationStatusEnum? { BulkUpdateAttributeMetadataOperationStatusEnum(rawValue: value) }
}