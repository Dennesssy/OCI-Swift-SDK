import Foundation

// MARK: - BulkUnpinMetadataOperationStatusEnum

public enum BulkUnpinMetadataOperationStatusEnum: String, Codable, Sendable {
    case success = "SUCCESS"
    case emptyAttributeList = "EMPTY_ATTRIBUTE_LIST"
    case invalidBulkRequest = "INVALID_BULK_REQUEST"
}

public extension BulkUnpinMetadataOperationStatusEnum {
    static var allValues: [BulkUnpinMetadataOperationStatusEnum] { [.success, .emptyAttributeList, .invalidBulkRequest] }
    static var allStringValues: [String] { ["SUCCESS", "EMPTY_ATTRIBUTE_LIST", "INVALID_BULK_REQUEST"] }
    static func fromString(_ value: String) -> BulkUnpinMetadataOperationStatusEnum? { BulkUnpinMetadataOperationStatusEnum(rawValue: value) }
}