import Foundation

// MARK: - BulkUpdateAttributeMetadataOperationTypeEnum

public enum BulkUpdateAttributeMetadataOperationTypeEnum: String, Codable, Sendable {
    case updateAttributeProperties = "UPDATE_ATTRIBUTE_PROPERTIES"
}

public extension BulkUpdateAttributeMetadataOperationTypeEnum {
    static var allValues: [BulkUpdateAttributeMetadataOperationTypeEnum] { [.updateAttributeProperties] }
    static var allStringValues: [String] { ["UPDATE_ATTRIBUTE_PROPERTIES"] }
    static func fromString(_ value: String) -> BulkUpdateAttributeMetadataOperationTypeEnum? { BulkUpdateAttributeMetadataOperationTypeEnum(rawValue: value) }
}