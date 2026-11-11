import Foundation

// MARK: - BulkDeActivationMetadataOperationTypeEnum

public enum BulkDeActivationMetadataOperationTypeEnum: String, Codable, Sendable {
    case deactivate = "DEACTIVATE"
}

public extension BulkDeActivationMetadataOperationTypeEnum {
    static var allValues: [BulkDeActivationMetadataOperationTypeEnum] { [.deactivate] }
    static var allStringValues: [String] { ["DEACTIVATE"] }
    static func fromString(_ value: String) -> BulkDeActivationMetadataOperationTypeEnum? { BulkDeActivationMetadataOperationTypeEnum(rawValue: value) }
}