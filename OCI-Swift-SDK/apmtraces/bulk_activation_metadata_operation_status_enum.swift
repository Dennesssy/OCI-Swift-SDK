import Foundation

// MARK: - BulkActivationMetadataOperationStatusEnum

public enum BulkActivationMetadataOperationStatusEnum: String, Codable, Sendable {
    case success = "SUCCESS"
    case emptyAttributeList = "EMPTY_ATTRIBUTE_LIST"
    case numericAttributeLimitExceeded = "NUMERIC_ATTRIBUTE_LIMIT_EXCEEDED"
    case stringAttributeLimitExceeded = "STRING_ATTRIBUTE_LIMIT_EXCEEDED"
    case insufficientStringSpace = "INSUFFICIENT_STRING_SPACE"
    case insufficientNumericSpace = "INSUFFICIENT_NUMERIC_SPACE"
    case invalidBulkRequest = "INVALID_BULK_REQUEST"
}

public extension BulkActivationMetadataOperationStatusEnum {
    static var allValues: [BulkActivationMetadataOperationStatusEnum] { [.success, .emptyAttributeList, .numericAttributeLimitExceeded, .stringAttributeLimitExceeded, .insufficientStringSpace, .insufficientNumericSpace, .invalidBulkRequest] }
    static var allStringValues: [String] { ["SUCCESS", "EMPTY_ATTRIBUTE_LIST", "NUMERIC_ATTRIBUTE_LIMIT_EXCEEDED", "STRING_ATTRIBUTE_LIMIT_EXCEEDED", "INSUFFICIENT_STRING_SPACE", "INSUFFICIENT_NUMERIC_SPACE", "INVALID_BULK_REQUEST"] }
    static func fromString(_ value: String) -> BulkActivationMetadataOperationStatusEnum? { BulkActivationMetadataOperationStatusEnum(rawValue: value) }
}