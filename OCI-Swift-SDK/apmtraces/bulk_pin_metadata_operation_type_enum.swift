import Foundation

// MARK: - BulkPinMetadataOperationTypeEnum

public enum BulkPinMetadataOperationTypeEnum: String, Codable, Sendable {
    case pin = "PIN"
}

public extension BulkPinMetadataOperationTypeEnum {
    static var allValues: [BulkPinMetadataOperationTypeEnum] { [.pin] }
    static var allStringValues: [String] { ["PIN"] }
    static func fromString(_ value: String) -> BulkPinMetadataOperationTypeEnum? { BulkPinMetadataOperationTypeEnum(rawValue: value) }
}