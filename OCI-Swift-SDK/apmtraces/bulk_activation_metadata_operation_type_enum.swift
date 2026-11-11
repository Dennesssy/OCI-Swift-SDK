import Foundation

// MARK: - BulkActivationMetadataOperationTypeEnum

public enum BulkActivationMetadataOperationTypeEnum: String, Codable, Sendable {
    case activate = "ACTIVATE"
}

public extension BulkActivationMetadataOperationTypeEnum {
    static var allValues: [BulkActivationMetadataOperationTypeEnum] { [.activate] }
    static var allStringValues: [String] { ["ACTIVATE"] }
    static func fromString(_ value: String) -> BulkActivationMetadataOperationTypeEnum? { BulkActivationMetadataOperationTypeEnum(rawValue: value) }
}