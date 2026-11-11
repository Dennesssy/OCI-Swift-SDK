import Foundation

// MARK: - BulkDeActivationMetadataOperationStatusEnum

public enum BulkDeActivationMetadataOperationStatusEnum: String, Codable, Sendable {
    case success = "SUCCESS"
    case emptyAttributeList = "EMPTY_ATTRIBUTE_LIST"
    case numericAttributeLimitExceeded = "NUMERIC_ATTRIBUTE_LIMIT_EXCEEDED"
    case stringAttributeLimitExceeded = "STRING_ATTRIBUTE_LIMIT_EXCEEDED"
    case invalidBulkRequest = "INVALID_BULK_REQUEST"
}

public extension BulkDeActivationMetadataOperationStatusEnum {
    static var allValues: [BulkDeActivationMetadataOperationStatusEnum] { [.success, .emptyAttributeList, .numericAttributeLimitExceeded, .stringAttributeLimitExceeded, .invalidBulkRequest] }
    static var allStringValues: [String] { ["SUCCESS", "EMPTY_ATTRIBUTE_LIST", "NUMERIC_ATTRIBUTE_LIMIT_EXCEEDED", "STRING_ATTRIBUTE_LIMIT_EXCEEDED", "INVALID_BULK_REQUEST"] }
    static func fromString(_ value: String) -> BulkDeActivationMetadataOperationStatusEnum? { BulkDeActivationMetadataOperationStatusEnum(rawValue: value) }
}